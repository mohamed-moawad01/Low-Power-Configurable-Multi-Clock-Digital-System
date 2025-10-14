module Edge_bit_counter (
    input wire Enable , // enable counter

    input wire [5 : 0] Prescale , // oversampling factor

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal 

    output reg [3 : 0] Bit_cnt , // bit number

    output reg [4 : 0] Edge_cnt // edge number 
);


/************ Edge_cnt behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset logic
            begin
                Edge_cnt <= 'b0 ;
            end

        else
            begin
                case ({Enable , Prescale})
                    'b1001000 : begin // module is enabled with Prescale equal 8
                                    if(Edge_cnt == 'd7)
                                        begin
                                            Edge_cnt <= 'b0 ; 
                                        end                
                                    else
                                        begin
                                            Edge_cnt <= Edge_cnt + 'b1 ;
                                        end        
                                end
                    
                    'b1010000 : begin // module is enabled with Prescale equal 16
                                    if(Edge_cnt == 'd15)
                                        begin
                                            Edge_cnt <= 'b0 ; 
                                        end                
                                    else
                                        begin
                                            Edge_cnt <= Edge_cnt + 'b1 ;
                                        end
                                end
                    
                    'b1100000 : begin // module is enabled with Prescale equal 32
                                    if(Edge_cnt == 'd31)
                                        begin
                                            Edge_cnt <= 'b0 ; 
                                        end                
                                    else
                                        begin
                                            Edge_cnt <= Edge_cnt + 'b1 ;
                                        end
                                end

                            default :   begin // to cover when module is not enabled
                                            Edge_cnt <= 'b0 ;                                            
                                        end
                endcase
            end   
    end


/************ Bit_cnt behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Bit_cnt <= 'b0 ;
            end
        else 
            begin
                case ({Enable , Prescale})
                    'b1001000 : begin // module is enabled with Prescale equal 8
                                    if((Bit_cnt == 'd10) && (Edge_cnt == 'd7)) // to avoid reaching 11 for one clock cycle
                                        begin
                                            Bit_cnt <= 'b0 ;   
                                        end
                                        else if(Edge_cnt == 'd7)
                                        begin
                                            Bit_cnt <= Bit_cnt + 'b1 ; 
                                        end                        
                                end
                    
                    'b1010000 : begin // module is enabled with Prescale equal 16
                                    if((Bit_cnt == 'd10) && (Edge_cnt == 'd15)) // to avoid reaching 11 for one clock cycle
                                        begin
                                            Bit_cnt <= 'b0 ;
                                        end
                                    else if(Edge_cnt == 'd15)
                                        begin
                                            Bit_cnt <= Bit_cnt + 'b1 ;
                                        end
                                end
                    
                    'b1100000 : begin // module is enabled with Prescale equal 32
                                    if((Bit_cnt == 'd10) && (Edge_cnt == 'd31)) // to avoid reaching 11 for one clock cycle
                                        begin
                                            Bit_cnt <= 'b0 ;
                                        end
                                    else if(Edge_cnt == 'd31)
                                        begin
                                            Bit_cnt <= Bit_cnt + 'b1 ;
                                        end
                                end

                    default: begin //cover when module is not enabled 
                               Bit_cnt <= 'b0 ;
                             end
                endcase
            end
            
    end



    
endmodule