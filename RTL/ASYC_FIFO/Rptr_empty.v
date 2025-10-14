module Rptr_empty #(
    parameter ADDR_WIDTH = 3
) (
    input wire [ADDR_WIDTH : 0] rq2_wptr , // gray encoded write address

    input wire R_inc , // read enable 

    input wire R_CLK , // read clock

    input wire R_rst_n , // read Reset signal

    output wire [ADDR_WIDTH - 1 : 0] R_addr , // binary encoded read address

    output reg [ADDR_WIDTH : 0] R_ptr , // gray encoded read address

    output reg R_empty // empty flag
);


/**************** Internal signals ****************/
reg [ADDR_WIDTH : 0] R_bin ; //current generated binary encoded read address

wire [ADDR_WIDTH : 0] R_bin_next ; //next generated binary encoded read address 

wire [ADDR_WIDTH : 0] R_gray_next ; //next generated gary encoded read address

wire R_empty_val ;

/**************** R_empty behaviour ****************/
always @(posedge R_CLK or negedge R_rst_n)
    begin
        if(!R_rst_n)
            begin
                R_empty <= 'b1 ; // on reset the module is empty
            end 
        else
            begin
                R_empty <= R_empty_val ;
            end
    end



/**************** R_ptr behaviour ****************/
always @(posedge R_CLK or negedge R_rst_n)
    begin
        if(!R_rst_n)
            begin
                R_ptr <= 'b0 ;
            end 
        else
            begin
                R_ptr <= R_gray_next ; // binary to gray encoding 
            end
    end



/**************** R_bin behaviour ****************/
always @(posedge R_CLK or negedge R_rst_n)
    begin
        if(!R_rst_n) // address increment logic
            begin
                R_bin <= 'b0 ;
            end
        else
            begin
                R_bin <= R_bin_next  ;
            end
    end


/**************** R_bin_next behaviour ****************/
assign R_bin_next = R_bin + (R_inc  & !R_empty) ;


/**************** R_gray_next behaviour ****************/
assign R_gray_next = R_bin_next ^ (R_bin_next >> 1) ;


/**************** R_addr behaviour ****************/
assign R_addr = R_bin[ADDR_WIDTH - 1 : 0] ;


/**************** R_empty_val behaviour ****************/
assign R_empty_val = (R_gray_next == rq2_wptr) ;


endmodule