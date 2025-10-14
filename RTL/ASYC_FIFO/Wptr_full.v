module Wptr_full #(
    parameter ADDR_WIDTH = 3 
) (
    input wire [ADDR_WIDTH : 0] wq2_rptr , // gray encoded read address

    input wire W_inc , // write enable 

    input wire W_CLK , // write clock signal

    input wire W_rst_n , // write reset signal

    output wire [ADDR_WIDTH - 1 : 0] W_addr , // binary encoded write address

    output reg [ADDR_WIDTH : 0] W_ptr , // gray encoded write address

    output reg W_full  // full flag
);

/**************** Internal signals ****************/
reg [ADDR_WIDTH : 0] W_bin ; // generated binary encoded write aadress

wire [ADDR_WIDTH : 0] W_bin_next ; //next generated binary encoded write address 

wire [ADDR_WIDTH : 0] W_gray_next ; //next generated gary encoded write address

wire W_full_val ;

/**************** W_full behaviour ****************/
always @(posedge W_CLK or negedge W_rst_n)
    begin
        if(!W_rst_n)
            begin
                W_full <= 'b0 ; // full is low when module is rested
            end
        else
            begin
                W_full <= W_full_val ;
            end
    end


/**************** W_ptr behaviour ****************/
always @(posedge W_CLK or negedge W_rst_n)
    begin
        if(!W_rst_n)
            begin
                W_ptr <= 'b0 ;
            end 
        else
            begin
                W_ptr <= W_gray_next ;
            end
    end


/**************** W_bin behaviour ****************/
always @(posedge W_CLK or negedge W_rst_n)
    begin
        if(!W_rst_n)
            begin
                W_bin <= 'b0 ;
            end 
        else
            begin
                W_bin <= W_bin_next ;
            end
    end


/**************** W_bin_next behaviour ****************/
assign W_bin_next = W_bin + (W_inc & !W_full) ;


/**************** W_gray behaviour ****************/
assign W_gray_next = W_bin_next ^ (W_bin_next >> 1) ; // from binary to gray encoding


/**************** W_addr behaviour ****************/
assign W_addr = W_bin [ADDR_WIDTH - 1 : 0] ;


/**************** W_full_val behaviour ****************/
assign W_full_val = ((W_gray_next [ADDR_WIDTH] != wq2_rptr[ADDR_WIDTH]) && (W_gray_next [ADDR_WIDTH - 1] != wq2_rptr[ADDR_WIDTH - 1])  && 
                (W_gray_next [ADDR_WIDTH - 2 : 0] == wq2_rptr[ADDR_WIDTH - 2 : 0])) ;
    
endmodule