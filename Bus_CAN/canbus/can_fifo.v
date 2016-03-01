
// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "can_defines.v"

module can_fifo
( 
  clk,
  rst,

  wr,

  data_in,
  addr,
  data_out,
  fifo_selected,

  reset_mode,
  release_buffer,
  extended_mode,
  overrun,
  info_empty,
  info_cnt

);

parameter Tp = 1;

input         clk;
input         rst;
input         wr;
input   [7:0] data_in;
input   [7:0] addr;
input         reset_mode;
input         release_buffer;
input         extended_mode;
input         fifo_selected;

output  [7:0] data_out;
output        overrun;
output        info_empty;
output  [6:0] info_cnt;

`ifdef ACTEL_APA_RAM
`else
`ifdef XILINX_RAM
`else
  reg     [7:0] fifo [0:63];
  reg     [3:0] length_fifo[0:63];
  reg           overrun_info[0:63];
`endif
`endif

reg     [5:0] rd_pointer;
reg     [5:0] wr_pointer;
reg     [5:0] read_address;
reg     [5:0] wr_info_pointer;
reg     [5:0] rd_info_pointer;
reg           wr_q;
reg     [3:0] len_cnt;
reg     [6:0] fifo_cnt;
reg     [6:0] info_cnt;
reg           latch_overrun;

wire    [3:0] length_info;
wire          write_length_info;
wire          fifo_empty;
wire          fifo_full;
wire          info_full;

assign write_length_info = (~wr) & wr_q;

// Delayed write signal
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_q <= 0;
  else if (reset_mode)
    wr_q <=#Tp 0;
  else
    wr_q <=#Tp wr;
end


// length counter
always @ (posedge clk or posedge rst)
begin
  if (rst)
    len_cnt <= 0;
  else if (reset_mode | write_length_info)
    len_cnt <=#Tp 1'b0;
  else if (wr & (~fifo_full))
    len_cnt <=#Tp len_cnt + 1'b1;
end


// wr_info_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_info_pointer <= 0;
  else if (reset_mode)
    wr_info_pointer <=#Tp 0;
  else if (write_length_info & (~info_full))
    wr_info_pointer <=#Tp wr_info_pointer + 1'b1;
end



// rd_info_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    rd_info_pointer <= 0;
  else if (reset_mode)
    rd_info_pointer <=#Tp 0;
  else if (release_buffer & (~fifo_empty))
    rd_info_pointer <=#Tp rd_info_pointer + 1'b1;
end


// rd_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    rd_pointer <= 0;
  else if (release_buffer & (~fifo_empty))
    rd_pointer <=#Tp rd_pointer + length_info;
  else if (reset_mode)
    rd_pointer <=#Tp 0;
end


// wr_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_pointer <= 0;
  else if (wr & (~fifo_full))
    wr_pointer <=#Tp wr_pointer + 1'b1;
  else if (reset_mode)
    wr_pointer <=#Tp 0;
end


// latch_overrun
always @ (posedge clk or posedge rst)
begin
  if (rst)
    latch_overrun <= 0;
  else if (reset_mode | write_length_info)
    latch_overrun <=#Tp 0;
  else if (wr & fifo_full)
    latch_overrun <=#Tp 1'b1;
end


// Counting data in fifo
always @ (posedge clk or posedge rst)
begin
  if (rst)
    fifo_cnt <= 0;
  else if (wr & (~release_buffer) & (~fifo_full))
    fifo_cnt <=#Tp fifo_cnt + 1'b1;
  else if ((~wr) & release_buffer & (~fifo_empty))
    fifo_cnt <=#Tp fifo_cnt - length_info;
  else if (wr & release_buffer & (~fifo_full) & (~fifo_empty))
    fifo_cnt <=#Tp fifo_cnt - length_info + 1'b1;
  else if (reset_mode)
    fifo_cnt <=#Tp 0;
end

assign fifo_full = fifo_cnt == 64;
assign fifo_empty = fifo_cnt == 0;


// Counting data in length_fifo and overrun_info fifo
always @ (posedge clk or posedge rst)
begin
  if (rst)
    info_cnt <= 0;
  else if (write_length_info ^ release_buffer)
    begin
      if (release_buffer & (~info_empty))
        info_cnt <=#Tp info_cnt - 1'b1;
      else if (write_length_info & (~info_full))
        info_cnt <=#Tp info_cnt + 1'b1;
    end
end
        
assign info_full = info_cnt == 64;
assign info_empty = info_cnt == 0;


// Selecting which address will be used for reading data from rx fifo
always @ (extended_mode or rd_pointer or addr)
begin
  if (extended_mode)      // extended mode
    begin
      read_address <= rd_pointer + (addr - 8'd16);
    end
  else                    // normal mode
    begin
      read_address <= rd_pointer + (addr - 8'd20);
    end
end



`ifdef ACTEL_APA_RAM
  actel_ram_64x8_sync fifo
  (
    .DO      (data_out),
    .RCLOCK  (clk),
    .WCLOCK  (clk),
    .DI      (data_in),
    .PO      (),                       // parity not used
    .WRB     (~(wr & (~fifo_full))),
    .RDB     (~fifo_selected),
    .WADDR   (wr_pointer),
    .RADDR   (read_address)
  );


  actel_ram_64x4_sync info_fifo
  (
    .DO      (length_info),
    .RCLOCK  (clk),
    .WCLOCK  (clk),
    .DI      (len_cnt),
    .PO      (),                       // parity not used
    .WRB     (~(write_length_info & (~info_full))),
    .RDB     (1'b0),                   // always enabled
    .WADDR   (wr_info_pointer),
    .RADDR   (rd_info_pointer)
  );


  actel_ram_64x1_sync overrun_fifo
  (
    .DO      (overrun),
    .RCLOCK  (clk),
    .WCLOCK  (clk),
    .DI      (latch_overrun | (wr & fifo_full)),
    .PO      (),                       // parity not used
    .WRB     (~(write_length_info & (~info_full))),
    .RDB     (1'b0),                   // always enabled
    .WADDR   (wr_info_pointer),
    .RADDR   (rd_info_pointer)
  );
`else
`ifdef XILINX_RAM

/*
  ram_64x8_sync fifo
  (
    .addra(wr_pointer),
    .addrb(read_address),
    .clka(clk),
    .clkb(clk),
    .dina(data_in),
    .doutb(data_out),
    .wea(wr & (~fifo_full))
  );
*/

  RAMB4_S8_S8 fifo
  (
    .DOA(),
    .DOB(data_out),
    .ADDRA({3'h0, wr_pointer}),
    .CLKA(clk),
    .DIA(data_in),
    .ENA(1'b1),
    .RSTA(1'b0),
    .WEA(wr & (~fifo_full)),
    .ADDRB({3'h0, read_address}),
    .CLKB(clk),
    .DIB(8'h0),
    .ENB(1'b1),
    .RSTB(1'b0),
    .WEB(1'b0)
  );



/*
  ram_64x4_sync info_fifo
  (
    .addra(wr_info_pointer),
    .addrb(rd_info_pointer),
    .clka(clk),
    .clkb(clk),
    .dina(len_cnt),
    .doutb(length_info),
    .wea(write_length_info & (~info_full))
  );
*/
  RAMB4_S4_S4 info_fifo
  (
    .DOA(),
    .DOB(length_info),
    .ADDRA({4'h0, wr_info_pointer}),
    .CLKA(clk),
    .DIA(len_cnt),
    .ENA(1'b1),
    .RSTA(1'b0),
    .WEA(write_length_info & (~info_full)),
    .ADDRB({4'h0, rd_info_pointer}),
    .CLKB(clk),
    .DIB(4'h0),
    .ENB(1'b1),
    .RSTB(1'b0),
    .WEB(1'b0)
  );

/*
  ram_64x1_sync overrun_fifo
  (
    .addra(wr_info_pointer),
    .addrb(rd_info_pointer),
    .clka(clk),
    .clkb(clk),
    .dina(latch_overrun | (wr & fifo_full)),
    .doutb(overrun),
    .wea(write_length_info & (~info_full))
  );
*/


  RAMB4_S1_S1 overrun_fifo
  (
    .DOA(),
    .DOB(overrun),
    .ADDRA({6'h0, wr_info_pointer}),
    .CLKA(clk),
    .DIA(latch_overrun | (wr & fifo_full)),
    .ENA(1'b1),
    .RSTA(1'b0),
    .WEA(write_length_info & (~info_full)),
    .ADDRB({6'h0, rd_info_pointer}),
    .CLKB(clk),
    .DIB(1'h0),
    .ENB(1'b1),
    .RSTB(1'b0),
    .WEB(1'b0)
  );




`else
  // writing data to fifo
  always @ (posedge clk)
  begin
    if (wr & (~fifo_full))
      fifo[wr_pointer] <=#Tp data_in;
  end

  // reading from fifo
  assign data_out = fifo[read_address];


  // writing length_fifo
  always @ (posedge clk)
  begin
    if (write_length_info & (~info_full))
      length_fifo[wr_info_pointer] <=#Tp len_cnt;
  end

  // reading length_fifo
  assign length_info = length_fifo[rd_info_pointer];

  // overrun_info
  always @ (posedge clk)
  begin
    if (write_length_info & (~info_full))
      overrun_info[wr_info_pointer] <=#Tp latch_overrun | (wr & fifo_full);
  end
  
  
  // reading overrun
  assign overrun = overrun_info[rd_info_pointer];


`endif
`endif





endmodule
