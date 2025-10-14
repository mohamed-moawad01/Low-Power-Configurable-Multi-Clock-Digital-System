module TX_FSM (
    input wire Data_Valid , // Signal indicate the validity of the parallel data 

    input wire ser_done , // Signal indicate The Serializer finished 

    input wire PAR_EN , // Signal for using the parity bit 

    input wire CLK , // Clock signal 

    input wire RST , // Resst signal

    output reg ser_en , // Enable for the Serializer block

    output reg [1 : 0] mux_sel , // the MUX block selector

    output reg Busy // indicate the UART_TX sending data
);

/**************** States Encoding with gray code ****************/

typedef enum bit [2 : 0] {
                    IDLE = 3'b000 , 
                   
                   Start = 3'b001 , 

                   Sending = 3'b011 , 

                   Parity = 3'b010 , 

                   Stop = 3'b110 
} State;


/**************** internal signals ****************/
State Current_State ; // hold the current state

State Next_State ; // hold the next state 


/**************** State transition ****************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset assertion logic
            begin
                Current_State <= IDLE ;
            end
        else
            begin
                Current_State <= Next_State ;
            end
    end


/**************** Next state and output logic ****************/ 
always @(*)
    begin
        ser_en = 'b0 ;
        mux_sel = 'b00 ;
        Busy = 'b0 ;
        Next_State = Current_State ; 
        case (Current_State)
        IDLE : begin 
                ser_en = 'b0 ;
                 mux_sel = 'b00 ;
                 Busy = 'b0 ;
                 if(Data_Valid)
                    begin
                        Next_State = Start ;
                    end
                else
                    begin
                        Next_State = IDLE ;
                    end
                end

        Start : begin  
                    ser_en = 'b1 ;
                    mux_sel = 'b01 ;
                    Busy = 'b1 ;
                    Next_State = Sending ;
                end
        
        Sending : begin 
                    mux_sel = 'b10 ;
                    Busy = 'b1 ;
                    ser_en = 'b1;
                    if(ser_done && PAR_EN) // if using parity go to the state that outputs the parity bit
                        begin
                            Next_State = Parity ;
                        end
                    else if(ser_done && ~PAR_EN) //if not using parity go to the state that outputs the stop bit
                        begin
                            Next_State = Stop ;
                        end
                    else
                        begin
                            Next_State = Sending ;
                        end
                  end

            Parity : begin 
                        ser_en = 'b0 ;
                        mux_sel = 'b11 ;
                        Busy = 'b1 ;
                        Next_State = Stop ;
                     end

            Stop : begin
                        ser_en = 'b0 ;
                        mux_sel = 'b0 ;
                        Busy = 'b1 ;
                        Next_State = IDLE ;
                    end
            
            default : begin //default state to prevent design go to unknown state 
                        ser_en = 'b0 ;
                        mux_sel = 'b00 ;
                        Busy = 'b0 ;
                        Next_State = Current_State ; 
                     end
            
        endcase
    end




endmodule