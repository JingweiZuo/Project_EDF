
// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "can_defines.v"

module can_btl
( 
  clk,
  rst,
  rx,

  /* Mode register */
  reset_mode,

  /* Bus Timing 0 register */
  baud_r_presc,
  sync_jump_width,

  /* Bus Timing 1 register */
  time_segment1,
  time_segment2,
  triple_sampling,

  /* Output signals from this module */
  clk_en,
  sample_point,
  sampled_bit,
  sampled_bit_q,
  tx_point,
  hard_sync,
  resync,
  
  /* Output from can_bsp module */
  rx_idle,
  transmitting,
  last_bit_of_inter
  
  
  


);

parameter Tp = 1;

input         clk;
input         rst;
input         rx;

  /* Mode register */
input         reset_mode;

/* Bus Timing 0 register */
input   [5:0] baud_r_presc;
input   [1:0] sync_jump_width;

/* Bus Timing 1 register */
input   [3:0] time_segment1;
input   [2:0] time_segment2;
input         triple_sampling;

/* Output from can_bsp module */
input         rx_idle;
input         transmitting;
input         last_bit_of_inter;

/* Output signals from this module */
output        clk_en;
output        sample_point;
output        sampled_bit;
output        sampled_bit_q;
output        tx_point;
output        hard_sync;
output        resync;



reg     [8:0] clk_cnt;
reg           clk_en;
reg           sync_blocked;
reg           resync_blocked;
reg           sampled_bit;
reg           sampled_bit_q;
reg     [7:0] quant_cnt;
reg     [3:0] delay;
reg           sync;
reg           seg1;
reg           seg2;
reg           resync_latched;
reg           sample_point;
reg     [1:0] sample;

wire          go_sync;
wire          go_seg1;
wire          go_seg2;
wire [8:0]    preset_cnt;
wire          sync_window;



assign preset_cnt = (baud_r_presc + 1'b1)<<1;        // (BRP+1)*2
assign hard_sync  =   (rx_idle | last_bit_of_inter)  & (~rx) & sampled_bit & (~sync_blocked) & (~transmitting);  // Hard synchronization
assign resync     =  (~rx_idle)                      & (~rx) & sampled_bit & (~sync_blocked) & (~resync_blocked) & (~transmitting);  // Re-synchronization


/* Generating general enable signal that defines baud rate. */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    clk_cnt <= 0;
  else if (clk_cnt == (preset_cnt-1))
    clk_cnt <=#Tp 0;
  else
    clk_cnt <=#Tp clk_cnt + 1;
end


always @ (posedge clk or posedge rst)
begin
  if (rst)
    clk_en  <= 1'b0;
  else if (clk_cnt == (preset_cnt-1))
    clk_en  <=#Tp 1'b1;
  else
    clk_en  <=#Tp 1'b0;
end



/* Changing states */
 assign go_sync = clk_en & (seg2 & (~hard_sync) & (~resync) & ((quant_cnt == time_segment2)));
 assign go_seg1 = clk_en & (sync | hard_sync | (resync & seg2 & sync_window) | (resync_latched & sync_window));
 assign go_seg2 = clk_en & (seg1 & (~hard_sync) & (quant_cnt == (time_segment1 + delay)));



/* When early edge is detected outside of the SJW field, synchronization request is latched and performed when
   SJW is reached */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    resync_latched <= 1'b0;
  else if (resync & seg2 & (~sync_window))
    resync_latched <=#Tp 1'b1;
  else if (go_seg1)
    resync_latched <= 1'b0;
end



/* Synchronization stage/segment */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    sync <= 0;
  else if (go_sync)
    sync <=#Tp 1'b1;
  else if (go_seg1)
    sync <=#Tp 1'b0;
end


assign tx_point = go_sync;

/* Seg1 stage/segment (together with propagation segment which is 1 quant long) */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    seg1 <= 1;
  else if (go_seg1)
    seg1 <=#Tp 1'b1;
  else if (go_seg2)
    seg1 <=#Tp 1'b0;
end


/* Seg2 stage/segment */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    seg2 <= 0;
  else if (go_seg2)
    seg2 <=#Tp 1'b1;
  else if (go_sync | go_seg1)
    seg2 <=#Tp 1'b0;
end


/* Quant counter */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    quant_cnt <= 0;
  else if (go_sync | go_seg1 | go_seg2)
    quant_cnt <=#Tp 0;
  else if (clk_en)
    quant_cnt <=#Tp quant_cnt + 1'b1;
end


/* When late edge is detected (in seg1 stage), stage seg1 is prolonged. */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    delay <= 0;
  else if (clk_en & resync & seg1)
    delay <=#Tp (quant_cnt > sync_jump_width)? (sync_jump_width + 1) : (quant_cnt + 1);
  else if (go_sync | go_seg1)
    delay <=#Tp 0;
end


// If early edge appears within this window (in seg2 stage), phase error is fully compensated
assign sync_window = ((time_segment2 - quant_cnt) < ( sync_jump_width + 1));


// Sampling data (memorizing two samples all the time).
always @ (posedge clk or posedge rst)
begin
  if (rst)
    sample <= 2'b11;
  else if (clk_en)
    sample <= {sample[0], rx};
end


// When enabled, tripple sampling is done here.
always @ (posedge clk or posedge rst)
begin
  if (rst)
    begin
      sampled_bit <= 1;
      sampled_bit_q <= 1;
      sample_point <= 0;
    end
  else if (clk_en & (~hard_sync))
    begin
      if (seg1 & (quant_cnt == (time_segment1 + delay)))
        begin
          sample_point <=#Tp 1;
          sampled_bit_q <=#Tp sampled_bit;
          if (triple_sampling)
            sampled_bit <=#Tp (sample[0] & sample[1]) | ( sample[0] & rx) | (sample[1] & rx);
          else
            sampled_bit <=#Tp rx;
        end
    end
  else
    sample_point <=#Tp 0;
end



/* Blocking synchronization (can occur only once in a bit time) */

always @ (posedge clk or posedge rst)
begin
  if (rst)
    sync_blocked <=#Tp 1'b0;
  else if (clk_en)
    begin
      if (hard_sync | resync)
        sync_blocked <=#Tp 1'b1;
      else if (seg2 & quant_cnt == time_segment2)
        sync_blocked <=#Tp 1'b0;
    end
end


/* Blocking resynchronization until reception starts (needed because after reset mode exits we are waiting for
   end-of-frame and interframe. No resynchronization is needed meanwhile). */
always @ (posedge clk or posedge rst)
begin
  if (rst)
    resync_blocked <=#Tp 1'b1;
  else if (reset_mode)
    resync_blocked <=#Tp 1'b1;
  else if (hard_sync)
    resync_blocked <=#Tp 1'b0;
end





endmodule
