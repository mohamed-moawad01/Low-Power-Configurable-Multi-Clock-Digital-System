module Deserializer (
    input wire Deser_en , //enable deserializing

    input wire  Sampled_bit , // Sampled data

    input wire [4 : 0] Edge_cnt , // Edge number

    input wire [5 : 0] Prescale  , // Sampling factor

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal

    output reg [7 : 0] P_DATA  // Parallel output Data 
);



/************ P_DATA behaviour ************/ 
always @(posedge CLK or negedge RST) 
    begin
        if(!RST) // reset logic
            begin
                P_DATA <= 'b0 ;
            end
        else if(Deser_en && (Edge_cnt == Prescale - 1)) // capcture at the last edge 
            begin
                P_DATA <= {Sampled_bit , P_DATA[7 : 1]} ; // puting data at its correct palce from first time 
            end
    end
    
endmodule