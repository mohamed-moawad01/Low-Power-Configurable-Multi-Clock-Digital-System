module SYS_CTRL (
    input wire [15 : 0] ALU_OUT , // input data from ALU 

    input wire OUT_Valid , // indicate ALU_OUT is valid

    input wire [7 : 0] RX_P_Data , // input data from UART RX

    input wire RX_D_VLD , // indicate RX_P_Data is valid

    input wire [7 : 0] RdData , // input data from register file

    input wire RdData_Valid , // indicate RdData is valid

    input wire FIFO_FULL , // indicate FIFO is full

    input wire CLK , // Clock signal

    input wire RST , // Reset signal

    output reg ALU_EN , // Enable of ALU

    output reg [3 : 0] ALU_FUN , // ALU op-code 

    output reg CLK_EN , // Enable clock gating of ALU

    output reg [3 : 0] Address , // memory address 

    output reg WrEN , // memory write enable

    output reg RdEN , // read enable

    output reg [7 : 0] M_Wr_Data , // data for memory

    output reg [7 : 0] F_Wr_Data , // data for FIFO 

    output reg Wr_INC  // FIFO write enable   
);

/**************** States Encoding with gray code ****************/

typedef enum bit [3 : 0] {

                    IDLE = 4'b0000 , 
                   
                   Wr_Addr = 4'b0001  , 

                   Wr_Data = 4'b0011  , 

                   Rd_Addr = 4'b0010 ,

                   OP_A = 4'b0110  ,

                   OP_B = 4'b0111 ,

                   ALU_OP = 4'b0101 ,

                   FIFO_mem = 4'b0100 ,

                   FIFO_alu_1 = 4'b1100 , 

                   FIFO_alu_2 = 4'b1101  
} State;

/**************** internal signals ****************/
State Current_State ; // hold the current state

State Next_State ; // hold the next state

reg [3 : 0] store ; // store the addres

reg [7 : 0] Data ; // hold the ALU data

reg [7 : 0] Data_c ; // write on it ALU data

reg  Valid ; //hold RX valid signal to help in FIFO

always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Current_State <= IDLE ;
                store <= 'b0 ;
                Valid <= 'b0 ;
                Data <= 'b0 ;
            end
        else
            begin
                Current_State <= Next_State ;
                store <= Address ;
                Valid <= RX_D_VLD ;
                Data   <= Data_c ;
            end
    end


always @(*)
    begin
        {ALU_EN , CLK_EN , WrEN , RdEN  , Wr_INC , M_Wr_Data , F_Wr_Data , ALU_FUN} = 'b0 ;
        Address = store ;
        Data_c = Data ;
        case(Current_State)
        IDLE : begin
                if(RX_D_VLD)
                    begin
                        case(RX_P_Data)
                        'hAA : Next_State = Wr_Addr ;
                        'hBB : Next_State = Rd_Addr ;
                        'hCC : Next_State = OP_A ;
                        'hDD : Next_State = ALU_OP ;
                        default : Next_State = IDLE ;
                        endcase
                    end

                else
                    begin
                        Next_State = IDLE ;
                    end
                end

        Wr_Addr : begin
                if(RX_D_VLD)
                    begin
                        Address = RX_P_Data[3 : 0] ;
                        Next_State = Wr_Data ; 
                    end

                else
                    begin
                        Next_State = Wr_Addr ;
                    end
                end
        
        Rd_Addr : begin
                if(RX_D_VLD)
                    begin
                        Address = RX_P_Data ;
                        RdEN = 'b1 ;
                        Next_State = FIFO_mem ;
                    end

                else
                    begin
                        Next_State = Rd_Addr ;
                    end
                end

        Wr_Data : begin
                if(RX_D_VLD)
                    begin
                        Address = store ;
                        M_Wr_Data = RX_P_Data ;
                        WrEN = 'b1 ;
                        Next_State = IDLE ; 
                    end

                else
                    begin
                        Next_State = Wr_Data ;
                    end
                end

        OP_A : begin
                if(RX_D_VLD)
                    begin
                        Address = 'b0 ;
                        M_Wr_Data = RX_P_Data ;
                        WrEN = 'b1 ;
                        Next_State = OP_B ; 
                    end

                else
                    begin
                        Next_State = OP_A ;
                    end
                end
        
        OP_B : begin
                if(RX_D_VLD)
                    begin
                        Address = 'b1 ;
                        M_Wr_Data = RX_P_Data ;
                        WrEN = 'b1 ;
                        Next_State = ALU_OP ; 
                    end

                else
                    begin
                        Next_State = OP_B ;
                    end
                end
        
        ALU_OP : begin
                CLK_EN = 'b1 ;
                if(RX_D_VLD)
                    begin
                        ALU_EN = 'b1 ;
                        ALU_FUN = RX_P_Data [3 : 0] ;
                        Next_State = FIFO_alu_1 ;
 
                    end

                else
                    begin
                        Next_State = ALU_OP ;
                    end
                end

        FIFO_mem : begin
                if(Valid && RdData_Valid && !FIFO_FULL)
                    begin
                        Wr_INC = 'b1 ;
                        F_Wr_Data [7 : 0] = RdData ;
                        Next_State = IDLE ;
                    end
                else
                    begin
                        Wr_INC = 'b0 ;
                        Next_State = FIFO_mem ;
                    end
                end

        FIFO_alu_1 : begin
                if(Valid && OUT_Valid && !FIFO_FULL)
                    begin
                        ALU_EN = 'b1 ;
                        {Data_c , F_Wr_Data} = ALU_OUT ;
                        Wr_INC = 'b1 ;
                        Next_State = FIFO_alu_2 ;
                    end
                else
                    begin
                        Wr_INC = 'b0 ;
                        Next_State = FIFO_alu_1 ;
                    end
                end

        FIFO_alu_2 : begin 
                        if(!FIFO_FULL)
                            begin
                                Wr_INC = 'b1 ;
                                F_Wr_Data = Data ;
                                Next_State = IDLE ;
                            end
                        else
                            begin
                                Next_State = FIFO_alu_2 ;
                            end
                    end

        

        default : Next_State = IDLE ; 
        
        endcase
    end





endmodule