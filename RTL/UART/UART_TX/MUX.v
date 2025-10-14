module MUX (
    input wire ser_data , // the data from the serializer 
    
    input wire par_bit , // the parity bit from the Parity calc 

    input wire [1 : 0] mux_sel , // the selection signal comes from FSM block

    output reg TX_OUT // the serial output
);

/**************** local parameters definition ****************/

localparam start_bit = 1'b0 ;
localparam stop_bit = 1'b1 ;

/**************** TX_OUT behaviour ****************/
always @(*)
    begin
        case(mux_sel)
        2'b00 : TX_OUT = stop_bit ; // in IDLE state always output 1'b1

        2'b01 : TX_OUT = start_bit ; // when receiveing new data pass the start bit 1'b0

        2'b10 : TX_OUT = ser_data ; // the serial data 

        2'b11 : TX_OUT = par_bit ; // the parity bit
        
        default : TX_OUT = stop_bit ;
        endcase
    end


    
endmodule