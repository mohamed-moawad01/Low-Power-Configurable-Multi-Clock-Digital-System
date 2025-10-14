module FIFO_Memory #(
    parameter BUS_WIDTH = 8 ,
    parameter ADDR_WIDTH = 3 ,
    parameter DEPTH = 8 
) (
    input wire [BUS_WIDTH - 1 : 0] W_data , // input write data

    input wire [ADDR_WIDTH - 1 : 0] W_addr , // write address

    input wire [ADDR_WIDTH - 1 : 0] R_addr , // read address 

    input wire W_inc , // write enable 

    input wire W_full , // full flag

    input wire W_CLK , // write clock

    input wire W_RST , //write reset signal

    output wire [BUS_WIDTH - 1 : 0] R_data // output read data

);

/**************** Variables ***************/
integer i ; // loop iterator


/**************** Internal signals ****************/
reg [BUS_WIDTH - 1 : 0] MEM [DEPTH - 1 : 0] ; // register file
 /* the depth is more than the needed (6) by 2 to overcome the synchronizer latency */

/**************** MEM behaviour ****************/
always @(posedge W_CLK or negedge W_RST)
    begin
        if(!W_RST)
            begin
              for (i = 0 ; i < DEPTH ; i = i + 1) 
              begin
                MEM[i] <= 'b0 ;  
              end  
            end
        else if(W_inc && !W_full)
            begin
                MEM[W_addr] <= W_data ;
            end 
    end


/**************** R_data behaviour ****************/
assign R_data = MEM[R_addr] ; 



endmodule
