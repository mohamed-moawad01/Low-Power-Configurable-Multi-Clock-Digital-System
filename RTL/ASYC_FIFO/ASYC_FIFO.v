module ASYC_FIFO #(
    parameter BUS_WIDTH = 8 ,
    parameter ADDR_WIDTH = 3 ,
    parameter DEPTH = 8
) (
    input wire W_CLK , // write clock

    input wire W_RST , // write reset

    input wire W_INC , // write enable

    input wire R_CLK , // read clock 

    input wire R_RST , // read reset

    input wire R_INC , // read enable

    input wire [BUS_WIDTH - 1 : 0] WR_DATA , // input write data

    output wire FULL , // full flag

    output wire EMPTY , // empty flag

    output wire [BUS_WIDTH - 1 : 0]  RD_DATA //output read data
);


/**************** Internal signals ****************/
wire [ADDR_WIDTH - 1 : 0] R_addr ; // read address

wire [ADDR_WIDTH - 1 : 0] W_addr ; // write address

wire [ADDR_WIDTH : 0] rq2_wptr ; // gray encoded write address after synchronizer

wire [ADDR_WIDTH : 0] R_ptr ; // gray encoded read address

wire [ADDR_WIDTH : 0] wq2_rptr ; // gray encoded read address after synchromnizer

wire [ADDR_WIDTH : 0] W_ptr ; // gray encoded write address


/**************** FIFO_Memory instantiation ****************/
FIFO_Memory #(.BUS_WIDTH(BUS_WIDTH) , .ADDR_WIDTH(ADDR_WIDTH) , .DEPTH(DEPTH)) FIFO_memory (
    .W_data (WR_DATA) , 
    .W_addr (W_addr) ,
    .R_addr (R_addr) ,
    .W_inc (W_INC) , 
    .W_full (FULL) ,
    .W_CLK (W_CLK) ,
    .W_RST (W_RST) ,
    .R_data (RD_DATA)
);


/**************** Rptr_empty instantiation ****************/
Rptr_empty #(.ADDR_WIDTH(ADDR_WIDTH)) Rptr_empty (
    .rq2_wptr (rq2_wptr) ,
    .R_inc (R_INC) ,
    .R_CLK (R_CLK) ,
    .R_rst_n (R_RST) ,
    .R_addr (R_addr) ,
    .R_ptr (R_ptr) ,
    .R_empty (EMPTY)
);


/**************** Wptr_full instantiation ****************/
Wptr_full #(.ADDR_WIDTH(ADDR_WIDTH)) Wptr_full (
    .wq2_rptr (wq2_rptr) ,
    .W_inc (W_INC) ,
    .W_CLK (W_CLK) , 
    .W_rst_n (W_RST) ,
    .W_addr (W_addr) , 
    .W_ptr (W_ptr) ,
    .W_full (FULL)
);

/**************** SYNC_r2w instantiation ****************/
SYNC #(.ADDR_WIDTH(ADDR_WIDTH)) SYNC_r2w (
    .ASYNC_addr (R_ptr) ,
    .CLK (W_CLK) ,
    .RST (W_RST) ,
    .SYNC_addr (wq2_rptr)
);


/**************** SYNC_w2r instantiation ****************/
SYNC #(.ADDR_WIDTH(ADDR_WIDTH)) SYNC_w2r (
    .ASYNC_addr (W_ptr) ,
    .CLK (R_CLK) ,
    .RST (R_RST) ,
    .SYNC_addr (rq2_wptr)
);

    
endmodule