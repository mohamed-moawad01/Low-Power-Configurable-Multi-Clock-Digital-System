module SYS_TOP (
    input wire UART_RX_IN , // UART_RX serial input

    input wire REF_CLK , // the refernce clock

    input wire UART_CLK , // fastest clock for UART

    input wire RST_N ,  // asynchronous reset signal

    output wire UART_TX_O , // Serial output

    output wire parity_error , // UART_RX parity error flag

    output wire framing_error  // Stop bit error
);


/**************** internal signals ****************/
wire [15 : 0] ALU_OUT ; //  output data from ALU

wire OUT_Valid ; // valid signal from ALU

wire ALU_EN ; // enable signal for ALU

wire [3 : 0] ALU_FUN ; // ALU function

wire [7 : 0] A ; // ALU first operand

wire [7 : 0] B ; // ALU second operand

wire ALU_CLK ; // ALU clock

wire CLK_EN ; // enable ALU clock

wire [7 : 0] RdData ; // output data from memory 

wire RdData_Valid ; // valid signal from memory

wire [3 : 0] Address ; // Address for memory

wire WrEN ; // memory write enable

wire RdEN ; // memory read enable

wire [7 : 0] M_Wr_Data ; // input data for memory

wire SYNC_RST_1 ; // Reset synchronizer for REF_CLK clock domain

wire SYNC_RST_2 ; // Reset synchronizer for UART_CLK clock domain

wire [7 : 0] Sync_DATA ; // Synchronized input data

wire Sync_Valid ; // Synchronized input valid signal

wire TX_CLK ; // CLock signal for UART_TX

wire [7 : 0] TX_Div_Ratio ; // TX_ClkDiv division ratio

wire [7 : 0] F_Wr_Data ; // data for FIFO

wire Wr_INC ;  // FIFO write enable 

wire Rd_pulse ; // read enable for FIFO

wire FIFO_FULL ; // FULL flag of FIFO

wire FIFO_EMPTY ; // EMPTY flag of FIFO

wire [7 : 0] TX_DATA ; // input DATA

wire Busy ; // UART_TX Busy signal

wire [7 : 0] UART_config ; // UART configuration

wire [7 : 0] RX_Div_Ratio ; // RX_ClkDiv division ratio

wire RX_CLK ; // CLock signal for UART_RX

wire [7 : 0] RX_P_Data ; // Output data UART RX

wire RX_D_VLD ; // indicate RX_P_Data is valid



/**************** SYS_CTRL instantiation ****************/
SYS_CTRL U_SYS_CTRL (
    .ALU_OUT (ALU_OUT) ,
    .OUT_Valid (OUT_Valid) ,
    .RX_P_Data (Sync_DATA) ,
    .RX_D_VLD (Sync_Valid) ,
    .RdData (RdData) ,
    .RdData_Valid (RdData_Valid) ,
    .FIFO_FULL (FIFO_FULL) ,
    .CLK (REF_CLK) ,
    .RST(SYNC_RST_1) ,
    .ALU_EN (ALU_EN) ,
    .ALU_FUN (ALU_FUN) ,
    .CLK_EN (CLK_EN) ,
    .Address (Address) ,
    .WrEN (WrEN) ,
    .RdEN (RdEN) ,
    .M_Wr_Data (M_Wr_Data) ,
    .F_Wr_Data (F_Wr_Data) ,
    .Wr_INC (Wr_INC)
);


/**************** ALU instantiation ****************/
ALU U_ALU (
    .A (A) ,
    .B (B) ,
    .ALU_FUN (ALU_FUN) ,
    .Enable (ALU_EN) ,
    .CLK (ALU_CLK) ,
    .RST (SYNC_RST_1) ,
    .ALU_OUT (ALU_OUT) ,
    .OUT_Valid (OUT_Valid)
);


/**************** Clock_Gating instantiation ****************/
Clock_Gating U_Clock_Gating (
    .CLK_EN (CLK_EN) ,
    .CLK (REF_CLK) ,
    .GATED_CLK (ALU_CLK) 
);


/**************** Reg_File instantiation ****************/
Reg_File U_Reg_File (
    .WrData (M_Wr_Data) , 
    .Address (Address) ,
    .WrEn (WrEN) ,
    .RdEn (RdEN) ,
    .CLK (REF_CLK) ,
    .RST (SYNC_RST_1) ,
    .RdData (RdData) ,
    .RdData_Valid (RdData_Valid) ,
    .REG0 (A) ,
    .REG1 (B) ,
    .REG2 (UART_config) , 
    .REG3 (TX_Div_Ratio)  
);


/**************** RST_SYNC_1 instantiation ****************/
RST_SYNC RST_SYNC_1 (
    .RST(RST_N) ,
    .CLK (REF_CLK) ,
    .SYNC_RST (SYNC_RST_1) 
);


/**************** RST_SYNC_2 instantiation ****************/
RST_SYNC RST_SYNC_2 (
    .RST(RST_N) ,
    .CLK (UART_CLK) ,
    .SYNC_RST (SYNC_RST_2) 
);


/**************** DATA_SYNC instantiation ****************/
DATA_SYNC U_DATA_SYNC (
    .unsync_bus (RX_P_Data) , 
    .bus_enable (RX_D_VLD) , 
    .CLK (REF_CLK) ,
    .RST (SYNC_RST_1) ,
    .sync_bus (Sync_DATA) ,
    .enable_pulse (Sync_Valid) 
);

/**************** Prescale_Mux instantiation ****************/
Prescale_Mux U_Prescale_Mux (
    .sel(UART_config[7 : 2]) ,
    .ratio (RX_Div_Ratio) 
);


/**************** RX_ClkDiv instantiation ****************/
ClkDiv RX_ClkDiv (
    .i_ref_clk (UART_CLK) ,
    .i_rst_n (SYNC_RST_2),
    .i_clk_en (1'b1) ,
    .i_div_ratio (RX_Div_Ratio) ,
    .o_div_clk(RX_CLK) 
);


/**************** TX_ClkDiv instantiation ****************/
ClkDiv TX_ClkDiv (
    .i_ref_clk (UART_CLK) ,
    .i_rst_n (SYNC_RST_2),
    .i_clk_en (1'b1) ,
    .i_div_ratio (TX_Div_Ratio) ,
    .o_div_clk(TX_CLK) 
);


/**************** ASYC_FIFO instantiation ****************/
ASYC_FIFO U_ASYC_FIFO (
    .W_CLK (REF_CLK) ,
    .W_RST (SYNC_RST_1) ,
    .W_INC (Wr_INC) ,
    .R_CLK (TX_CLK) ,
    .R_RST (SYNC_RST_2) ,
    .R_INC (Rd_pulse) ,
    .WR_DATA (F_Wr_Data) ,
    .FULL (FIFO_FULL) ,
    .EMPTY (FIFO_EMPTY) ,
    .RD_DATA (TX_DATA)
);

/**************** Pulse_Gen instantiation ****************/
Pulse_Gen U_Pulse_Gen (
    .In_Sig (Busy) ,
    .CLK (TX_CLK) ,
    .RST (SYNC_RST_2) ,
    .Pulse (Rd_pulse) 
);

/**************** UART_TX instantiation ****************/
UART_TX U_UART_TX (
    .P_Data (TX_DATA) ,
    .Data_Valid (!FIFO_EMPTY) ,
    .PAR_EN (UART_config[0]) , 
    .PAR_TYP (UART_config[1]) ,
    .CLK (TX_CLK) ,
    .RST (SYNC_RST_2) ,
    .TX_OUT (UART_TX_O) ,
    .Busy (Busy)
);


/**************** UART_TX instantiation ****************/
UART_RX U_UART_RX (
    .RX_IN (UART_RX_IN) ,
    .PAR_EN (UART_config[0]) ,
    .PAR_TYP (UART_config[1]) ,
    .CLK (RX_CLK) ,
    .RST (SYNC_RST_2) , 
    .Prescale (UART_config[7 : 2]) ,
    .Parity_Error (parity_error) ,
    .Stop_Error (framing_error) ,
    .P_DATA (RX_P_Data) ,
    .Data_valid (RX_D_VLD) 
);
    
endmodule
