module UART_RX (
    input wire RX_IN , // Serial input data

    input wire PAR_EN , // Enable parity usage

    input wire PAR_TYP , // Decide parity type

    input wire CLK , // Clock signal

    input wire RST , // Reset signal

    input wire [5 : 0] Prescale , // Oversampling factor

    output wire Parity_Error , // Parity error

    output wire Stop_Error , // Stop bit error

    output wire [7 : 0] P_DATA , // Parallel output data

    output wire Data_valid  // Output data validity
);


/************ Internal signals ************/
wire [3 : 0] Bit_cnt ; // Bit number

wire Enable ; // Enable counter

wire [4 : 0] Edge_cnt ; // Edge counter

wire Dat_samp_en ; // Enable sampling

wire Par_chk_en ; // Enable parity checking

wire Strt_chk_en ; // Enable start bit checking 

wire Strt_glitch ; // Start bit error 

wire Stp_chk_en ; // Enable stop bit checking 

wire Deser_en ; // Enable deserializer

wire Sampled_bit ; // Sampled data


/************ Parity_Check instantiation ************/
Parity_Check U0_parity_check (
    .Par_chk_en (Par_chk_en) ,
    .P_DATA (P_DATA) ,
    .Sampled_bit (Sampled_bit) ,
    .PAR_TYP (PAR_TYP) ,
    .PAR_EN (PAR_EN) , 
    .CLK (CLK) ,
    .RST (RST) ,
    .Par_err (Parity_Error)
);


/************ Strt_Check instantiation ************/
Strt_Check U0_strt_check (
    .Strt_chk_en (Strt_chk_en) ,
    .Sampled_bit (Sampled_bit) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .Strt_glitch (Strt_glitch)
);


/************ Stop_Check instantiation ************/
Stop_Check U0_stop_check (
    .Stp_chk_en (Stp_chk_en) ,
    .Sampled_bit (Sampled_bit) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .Stp_err (Stop_Error) 
);


/************ Edge_bit_counter instantiation ************/
Edge_bit_counter U0_edge_bit_counter (
    .Enable (Enable) ,
    .Prescale (Prescale) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .Bit_cnt (Bit_cnt) ,
    .Edge_cnt (Edge_cnt)
);


/************ Data_sampling instantiation ************/
Data_sampling U0_data_sampling (
    .RX_IN (RX_IN) ,
    .Dat_samp_en (Dat_samp_en) ,
    .Edge_cnt (Edge_cnt) ,
    .Prescale (Prescale) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .Sampled_bit (Sampled_bit)
);


/************ Deserializer instantiation ************/
Deserializer U0_deserializer (
    .Deser_en (Deser_en) ,
    .Sampled_bit (Sampled_bit) ,
    .Edge_cnt (Edge_cnt) ,
    .Prescale (Prescale) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .P_DATA (P_DATA)
);


/************ FSM instantiation ************/
RX_FSM U0_FSM (
    .RX_IN (RX_IN) ,
    .Prescale (Prescale) ,
    .PAR_EN (PAR_EN) ,
    .Edge_cnt (Edge_cnt) ,
    .Bit_cnt (Bit_cnt) ,
    .Par_err (Parity_Error) ,
    .Strt_glitch (Strt_glitch) ,
    .Stp_err (Stop_Error) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .Enable (Enable) ,
    .Dat_samp_en (Dat_samp_en) ,
    .Par_chk_en (Par_chk_en) ,
    .Strt_chk_en (Strt_chk_en) ,
    .Stp_chk_en (Stp_chk_en) ,
    .Deser_en (Deser_en) ,
    .Data_valid (Data_valid)
);


endmodule