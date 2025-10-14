module UART_TX (
    input wire [7 : 0] P_Data , // parallel input data

    input wire Data_Valid , // ensure validity of input data

    input wire PAR_EN , // for using parity bit

    input wire PAR_TYP , // type of the parity bit

    input wire CLK , // Clock signal 

    input wire RST , // Reset signal

    output wire TX_OUT , // serial output 

    output wire Busy // indicate module started its function
);

/**************** intenal signals ****************/
wire ser_en ; // enable the serializer from FSM

wire ser_done ; // flag indicate serializer finished function

wire ser_data ; //serial output of the serializer

wire par_bit ; // parity bit output of parity calc

wire [1 : 0] mux_sel ; // the MUX selection


/**************** FSM instantiation ****************/
TX_FSM fsm (
    .Data_Valid (Data_Valid) ,
    .ser_done (ser_done) ,
    .PAR_EN (PAR_EN) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .ser_en (ser_en) ,
    .mux_sel (mux_sel) ,
    .Busy (Busy)
);


/**************** Serializer instantiation ****************/
Serializer serializer (
    .P_Data (P_Data) ,
    .ser_en (ser_en) ,
    .Data_Valid (Data_Valid) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .ser_done (ser_done) ,
    .ser_data (ser_data)
);


/**************** Parity_Calc instantiation ****************/
Parity_Calc parit_calc (
    .P_Data (P_Data) ,
    .Data_Valid (Data_Valid) ,
    .Busy (Busy) ,
    .PAR_TYP (PAR_TYP) ,
    .CLK (CLK) ,
    .RST (RST) ,
    .par_bit (par_bit)
);

/**************** MUX instantiation ****************/
MUX mux (
    .ser_data (ser_data) ,
    .par_bit(par_bit) , 
    .mux_sel (mux_sel) ,
    .TX_OUT (TX_OUT)
);
    
endmodule