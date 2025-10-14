module Pulse_Gen (
    input wire In_Sig , // input signal

    input wire CLK , // Clock signal

    input wire RST , // Reset signal

    output wire Pulse // the pulse output
);

/******************* Internal signals *******************/
reg [1 : 0] Pulse_reg ; // hold the pulse ;

always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Pulse_reg <= 'b0 ;
            end
        else
            begin
                Pulse_reg <= {Pulse_reg[0] , In_Sig} ;
            end 
    end

assign Pulse = Pulse_reg[0] & !Pulse_reg[1] ;
    
endmodule