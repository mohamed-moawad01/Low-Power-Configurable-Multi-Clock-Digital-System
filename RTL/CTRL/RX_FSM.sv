module RX_FSM (
    input wire RX_IN , // serial data

    input wire [5 : 0] Prescale , //Oversampling factor 

    input wire PAR_EN , // parity usage enable 

    input wire [4 : 0] Edge_cnt , // Edge number 

    input wire [3 : 0] Bit_cnt , // Bit number

    input wire Par_err , // Parity bit error 

    input wire Strt_glitch , // Start bit error 

    input wire Stp_err , // Stop bit error

    input wire CLK , // Clock signal

    input wire RST , // Reset  signal

    output reg Enable , // Counter enable

    output reg Dat_samp_en , // Sampling enable 

    output reg Par_chk_en , // parity Check enable 

    output reg  Strt_chk_en , // Strt check enable 

    output reg Stp_chk_en , // Stop check enable 

    output reg Deser_en , // Deserializer enable 

    output reg Data_valid  // Output data validity 
);


/************ FSM Encoding using gray code ************/
 
typedef enum bit [2 : 0] {
                   IDLE = 3'b000 , 
                   
                   Start_chk = 3'b001 , 

                   Deserializing = 3'b011 , 

                   Parity_chk = 3'b010 , 

                   Stop_chk = 3'b110 ,

                   Valid = 3'b111 
} State;

/**************** internal signals ****************/
State Current_State ; // hold the current state

State Next_State ; // hold the next state 


/************ State Transition ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) //reset logic
            begin
                Current_State <= IDLE ;
            end

        else
            begin
                Current_State <= Next_State ;
            end
    end

/************ Next state & Output logic ************/
always @(*)
    begin
        // initial values
        Enable = 'b0 ;
        Dat_samp_en = 'b0 ;
        Par_chk_en = 'b0 ;
        Strt_chk_en = 'b0 ;
        Stp_chk_en = 'b0 ; 
        Deser_en = 'b0 ;
        Data_valid = 'b0 ;
        Next_State = Current_State ;

        case (Current_State)
            IDLE : begin
                    Enable = 'b0 ;
                    Dat_samp_en = 'b0 ;
                    Par_chk_en = 'b0 ;
                    Strt_chk_en = 'b0 ;
                    Stp_chk_en = 'b0 ; 
                    Deser_en = 'b0 ;
                    Data_valid = 'b0 ;
                    if(!RX_IN)
                        begin
                            Next_State = Start_chk ;
                        end
                    else
                        begin
                            Next_State = IDLE ;
                        end
                   end

            Start_chk : begin
                            Enable = 'b1 ;
                            Strt_chk_en = 'b1 ;
                            Dat_samp_en = 'b1 ;
                            if((Edge_cnt != Prescale - 1))
                                begin
                                    Next_State = Start_chk ; 
                                end
                            else if (Strt_glitch)
                                begin
                                    Next_State = IDLE ;
                                end
                            else
                                begin
                                    Next_State = Deserializing ;
                                end
                        end

            Deserializing : begin
                                Enable = 'b1;
                                Dat_samp_en = 'b1 ;
                                Deser_en = 'b1 ;
                                if(Bit_cnt <= 'd8)
                                    begin
                                        Next_State = Deserializing ;
                                    end
                                else if (PAR_EN)
                                    begin
                                        Next_State = Parity_chk ;
                                    end
                                else
                                    begin
                                        Next_State = Stop_chk ; 
                                    end
                            end
            
            Parity_chk : begin
                            Enable = 'b1 ;
                            Par_chk_en = 'b1 ;
                            Dat_samp_en = 'b1 ;
                            if((Edge_cnt != Prescale - 1))
                                begin
                                    Next_State = Parity_chk ; 
                                end
                            else if (Par_err)
                                begin
                                    Next_State = IDLE ;
                                end
                            else
                                begin
                                    Next_State = Stop_chk ;
                                end
                         end

            Stop_chk : begin
                            Enable = 'b1 ;
                            Stp_chk_en = 'b1 ;
                            Dat_samp_en = 'b1 ;
                            if((Edge_cnt != Prescale - 1))
                                begin
                                    Next_State = Stop_chk ; 
                                end
                            else if (Stp_err)
                                begin
                                    Next_State = IDLE ;
                                end
                            else
                                begin
                                    Next_State = Valid ;
                                end
                        end

            Valid : begin
                        Data_valid = 'b1 ; 
                        if(!RX_IN)
                            begin
                                Next_State = Start_chk ;
                            end
                        else
                            begin
                                Next_State = IDLE ; 
                            end
                    end
            default: begin
                        Enable = 'b0 ;
                        Dat_samp_en = 'b0 ;
                        Par_chk_en = 'b0 ;
                        Strt_chk_en = 'b0 ;
                        Stp_chk_en = 'b0 ; 
                        Deser_en = 'b0 ;
                        Data_valid = 'b0 ;
                        Next_State = IDLE ;
                     end
        endcase
    end
    
endmodule