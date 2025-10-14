module Parity_Check (
    input wire Par_chk_en , // enable checking parity bit

    input wire [7 : 0] P_DATA , // the sampled data 

    input wire Sampled_bit , // sampled parity bit 

    input wire PAR_TYP , // Decide parity type  

    input wire PAR_EN , // enable parity usage

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal 

    output reg Par_err // detect errors in parity bit 
);


/************ Internal Signals ************/ 
reg out_parity ; //hold the parity of sampled data


/************ out_parity behaviour ************/ 
always @(*)
    begin
        if(PAR_TYP) 
            begin
                out_parity = ~^ P_DATA ; // odd parity
            end
        else  
            begin
                out_parity = ^ P_DATA ; //even parity
            end
    end


/************ Par_err behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset logic
            begin
                Par_err <= 'b0 ;
            end
        else if(~PAR_EN)
            begin
                Par_err <= 'b0 ;
            end
        else if(Par_chk_en) // module is enabled  
            begin
                if(Sampled_bit == out_parity) // parity bit is correct
                    begin
                        Par_err <= 'b0 ;
                    end
                else
                    begin
                        Par_err <= 'b1 ; // start bit is not correct
                    end
            end

    end
    
endmodule