module Stop_Check (
    input wire Stp_chk_en , // enable checking stop bit 

    input wire Sampled_bit , // sampled stop bit 

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal 

    output reg Stp_err //  detect errors in stop bit 
);


/************ Stp_err behaviour ************/ 
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset logic
            begin
                Stp_err <= 'b0 ;
            end

        else if(Stp_chk_en) //module is enabled
            begin
                if(Sampled_bit == 1'b1) // stop bit is correct 
                    begin
                        Stp_err <= 'b0 ;
                    end
                else 
                    begin
                        Stp_err <= 'b1 ; //stop bit is not correct 
                    end
            end
    end
    
endmodule