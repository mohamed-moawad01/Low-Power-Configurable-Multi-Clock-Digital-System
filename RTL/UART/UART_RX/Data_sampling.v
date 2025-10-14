module Data_sampling (
    input wire RX_IN , // serial data

    input wire Dat_samp_en , // Enable sampling 
 
    input wire [4 : 0] Edge_cnt , // Edge number

    input wire [5 : 0] Prescale , // Oversampling factor

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal

    output reg Sampled_bit // Sampled bit 
);


/************ Internal signals ************/
reg [2 : 0] Sample ;


/************ Sample behaviour ************/ 
always @(posedge CLK or negedge RST)
    begin
        if(!RST) //reset logic
            begin
                Sample <= 'b0 ;
            end
        
        else 
            begin
                case ({Dat_samp_en , Prescale})
                    'b1001000 : begin // module is enabled with Prescale equal 8
                                    if((Edge_cnt == 'd2) || (Edge_cnt == 'd3) || (Edge_cnt == 'd4)) // sample from 3rd to 5th clock cycle
                                        begin
                                            Sample <= {RX_IN , Sample[2 : 1]} ; 
                                        end                       
                                end
                    
                    'b1010000 : begin // module is enabled with Prescale equal 16
                                    if((Edge_cnt == 'd6) || (Edge_cnt == 'd7) || (Edge_cnt == 'd8)) // sample from 7th to 9th clock cycle
                                        begin
                                            Sample <= {RX_IN , Sample[2 : 1]} ; 
                                        end 
                                end
                    
                    'b1100000 : begin // module is enabled with Prescale equal 32
                                    if((Edge_cnt == 'd14) || (Edge_cnt == 'd15) || (Edge_cnt == 'd16)) // sample from 15th to 17th clock cycle
                                        begin
                                            Sample <= {RX_IN , Sample[2 : 1]} ; 
                                        end 
                                end
                endcase
            end
    end


/************ Sampled_bit behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Sampled_bit <= 'b0 ;
            end
        else
            begin
                case ({Dat_samp_en , Prescale})

                    'b1001000 : begin // module is enabled with Prescale equal 8

                                    if((Edge_cnt == 'd5)) // to evaluate bit at 6th clock cycle
                                        begin
                                            Sampled_bit <= (Sample[0] & Sample[1]) | (Sample[0] & Sample[2]) | (Sample[1] & Sample[2]) ; 
                                        end                       
                                end
                    
                    'b1010000 : begin // module is enabled with Prescale equal 16

                                    if((Edge_cnt == 'd9)) // to evaluate bit at 10th clock cycle 
                                        begin
                                            Sampled_bit <= (Sample[0] & Sample[1]) | (Sample[0] & Sample[2]) | (Sample[1] & Sample[2]) ; 
                                        end 
                                end
                    
                    'b1100000 : begin // module is enabled with Prescale equal 32

                                    if((Edge_cnt == 'd17)) // to evaluate bit at 18th clock cycle 
                                        begin
                                            Sampled_bit <= (Sample[0] & Sample[1]) | (Sample[0] & Sample[2]) | (Sample[1] & Sample[2]) ; 
                                        end 
                                end
                endcase
            end
    end

endmodule