module Strt_Check (
    input wire Strt_chk_en , // enable checking the start bit

    input wire Sampled_bit , // sampled start bit

    input wire CLK , // Clock signal

    input wire RST , // Reset signal 

    output reg Strt_glitch //detect glitches in start bit
);

/************ Strt_glitch behaviour ************/ 
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset logic
            begin
                Strt_glitch <= 'b0 ;
            end 

        else if(Strt_chk_en) // module is enabled
            begin
                if(Sampled_bit == 1'b0) // start bit is correct
                    begin
                       Strt_glitch <= 'b0; 
                    end
                else
                    begin
                       Strt_glitch <= 'b1 ;  // start bit is not correct
                    end
            end
    end
    
endmodule