module Parity_Calc (
    input wire [7 : 0] P_Data , // The input data

    input wire Data_Valid , // Signal shows the input data is valid 

    input wire Busy , // to hold the parity bit unchanged during sending a frame

    input wire PAR_TYP , // Signal determine the type of parity bit 

    input wire CLK , // The clock signal

    input wire RST , // The reset signal

    output reg par_bit // The parity bit
);

/**************** internal signal ****************/
reg parity_comp ;

/**************** parity_comp behaviour ****************/
always @(*)
    begin
        if(!Busy && PAR_TYP) // module not working and parity type is odd
            begin
                parity_comp = ~^ P_Data ;
            end
        else if(!Busy && ~PAR_TYP) // module not working and parity type is even
            begin
                parity_comp = ^P_Data ; 
            end
        else
            begin
                parity_comp = par_bit ; //keep its value
            end
    end


/**************** par_bit behaviour ****************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset logic
            begin
                par_bit <= 'b0 ;
            end
        else if(Data_Valid) // register only when the data is valid
            begin
                par_bit <=  parity_comp ;
            end
    end

endmodule