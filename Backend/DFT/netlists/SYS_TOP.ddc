/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 11:36:27 2025
/////////////////////////////////////////////////////////////


module dft_mux_1 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_4 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_3 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_2 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_0 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_6 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module dft_mux_5 ( SEL, IN0, IN1, OUT );
  input SEL, IN0, IN1;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(N0), .Y(OUT) );
endmodule


module SYS_CTRL_test_1 ( ALU_OUT, OUT_Valid, RX_P_Data, RX_D_VLD, RdData, 
        RdData_Valid, FIFO_FULL, CLK, RST, ALU_EN, ALU_FUN, CLK_EN, Address, 
        WrEN, RdEN, M_Wr_Data, F_Wr_Data, Wr_INC, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] M_Wr_Data;
  output [7:0] F_Wr_Data;
  input OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL, CLK, RST, test_si,
         test_se;
  output ALU_EN, CLK_EN, WrEN, RdEN, Wr_INC, test_so;
  wire   Valid, N117, N118, N119, N120, N129, N133, N134, N135, N136, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101;
  wire   [3:0] Current_State;
  wire   [3:0] store;
  wire   [7:0] Data;
  wire   [3:0] Next_State;
  assign test_so = store[3];

  SDFFRQX2M \Data_reg[0]  ( .D(n83), .SI(n100), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Data[0]) );
  SDFFRQX2M \Data_reg[1]  ( .D(n84), .SI(Data[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[1]) );
  SDFFRQX2M \Data_reg[2]  ( .D(n85), .SI(Data[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[2]) );
  SDFFRQX2M \Data_reg[3]  ( .D(n86), .SI(Data[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[3]) );
  SDFFRQX2M \Data_reg[4]  ( .D(n87), .SI(Data[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[4]) );
  SDFFRQX2M \Data_reg[5]  ( .D(n88), .SI(Data[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[5]) );
  SDFFRQX2M \Data_reg[6]  ( .D(n89), .SI(Data[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[6]) );
  SDFFRQX2M \Data_reg[7]  ( .D(n90), .SI(Data[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Data[7]) );
  SDFFRQX2M \store_reg[3]  ( .D(Address[3]), .SI(store[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(store[3]) );
  SDFFRQX2M \store_reg[2]  ( .D(Address[2]), .SI(store[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(store[2]) );
  SDFFRQX2M \store_reg[1]  ( .D(Address[1]), .SI(store[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(store[1]) );
  SDFFRQX2M Valid_reg ( .D(RX_D_VLD), .SI(Data[7]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Valid) );
  SDFFRQX2M \store_reg[0]  ( .D(Address[0]), .SI(Valid), .SE(test_se), .CK(CLK), .RN(RST), .Q(store[0]) );
  SDFFRQX2M \Current_State_reg[3]  ( .D(Next_State[3]), .SI(n19), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Current_State[3]) );
  SDFFRQX2M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Current_State[0]) );
  SDFFRQX2M \Current_State_reg[2]  ( .D(Next_State[2]), .SI(n101), .SE(test_se), .CK(CLK), .RN(RST), .Q(Current_State[2]) );
  SDFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(n20), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Current_State[1]) );
  NOR2X2M U4 ( .A(n19), .B(n29), .Y(n18) );
  NOR2X2M U21 ( .A(n94), .B(n44), .Y(ALU_FUN[2]) );
  NOR2X2M U22 ( .A(n96), .B(n44), .Y(ALU_FUN[0]) );
  MX3X1M U23 ( .A(n26), .B(n25), .C(store[2]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[2]) );
  MX3X1M U24 ( .A(n28), .B(n27), .C(store[3]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[3]) );
  INVX2M U25 ( .A(n41), .Y(n30) );
  INVX2M U26 ( .A(WrEN), .Y(n32) );
  INVX2M U27 ( .A(n58), .Y(n97) );
  NOR2X2M U28 ( .A(n43), .B(n39), .Y(n41) );
  NAND2X2M U29 ( .A(n30), .B(n44), .Y(ALU_EN) );
  AOI21X2M U30 ( .A0(n58), .A1(n55), .B0(n33), .Y(WrEN) );
  NAND2X2M U31 ( .A(n74), .B(n29), .Y(n58) );
  NAND2X2M U32 ( .A(n74), .B(n20), .Y(n64) );
  OAI21X2M U33 ( .A0(n33), .A1(n96), .B0(n73), .Y(N117) );
  AND2X2M U34 ( .A(n62), .B(n64), .Y(n55) );
  INVX2M U35 ( .A(n20), .Y(n29) );
  INVX2M U36 ( .A(n73), .Y(N129) );
  NOR2X2M U37 ( .A(n46), .B(n35), .Y(n42) );
  NOR2X2M U38 ( .A(n96), .B(n32), .Y(M_Wr_Data[0]) );
  NOR2X2M U39 ( .A(n95), .B(n32), .Y(M_Wr_Data[1]) );
  NOR2X2M U40 ( .A(n94), .B(n32), .Y(M_Wr_Data[2]) );
  NOR2X2M U41 ( .A(n93), .B(n32), .Y(M_Wr_Data[3]) );
  NOR2X2M U42 ( .A(n92), .B(n32), .Y(M_Wr_Data[7]) );
  NOR2X2M U43 ( .A(n49), .B(n33), .Y(RdEN) );
  NAND3X2M U44 ( .A(n19), .B(n100), .C(n68), .Y(n35) );
  OAI21X2M U45 ( .A0(n33), .A1(n95), .B0(n72), .Y(N118) );
  OAI21X2M U46 ( .A0(n33), .A1(n94), .B0(n71), .Y(N119) );
  OAI21X2M U47 ( .A0(n33), .A1(n93), .B0(n70), .Y(N120) );
  NAND2X2M U48 ( .A(n19), .B(n101), .Y(n38) );
  OR3X2M U49 ( .A(n38), .B(n29), .C(n100), .Y(n36) );
  NAND4BX1M U50 ( .AN(RdEN), .B(n98), .C(n43), .D(n45), .Y(Next_State[2]) );
  AOI211X2M U51 ( .A0(n99), .A1(n46), .B0(n47), .C0(n48), .Y(n45) );
  INVX2M U52 ( .A(n35), .Y(n99) );
  OR3X2M U53 ( .A(n40), .B(n41), .C(n42), .Y(Wr_INC) );
  INVX2M U54 ( .A(n72), .Y(N134) );
  INVX2M U55 ( .A(n71), .Y(N135) );
  INVX2M U56 ( .A(n70), .Y(N136) );
  OAI211X2M U57 ( .A0(n36), .A1(n31), .B0(n43), .C0(n44), .Y(Next_State[3]) );
  AND4X2M U58 ( .A(n35), .B(n98), .C(n36), .D(n37), .Y(n34) );
  NOR2X2M U59 ( .A(n38), .B(n39), .Y(n37) );
  NAND3X2M U60 ( .A(n20), .B(n101), .C(n56), .Y(n50) );
  INVX2M U61 ( .A(CLK_EN), .Y(n98) );
  NOR2X2M U62 ( .A(n95), .B(n44), .Y(ALU_FUN[1]) );
  NOR2X2M U63 ( .A(n93), .B(n44), .Y(ALU_FUN[3]) );
  NAND3X2M U64 ( .A(OUT_Valid), .B(n31), .C(Valid), .Y(n39) );
  NOR3BX2M U65 ( .AN(n19), .B(Current_State[3]), .C(n101), .Y(n74) );
  INVX2M U66 ( .A(RX_D_VLD), .Y(n33) );
  BUFX2M U67 ( .A(Current_State[0]), .Y(n20) );
  INVX2M U68 ( .A(Current_State[1]), .Y(n101) );
  NAND2X2M U69 ( .A(store[0]), .B(n33), .Y(n73) );
  MX3X1M U70 ( .A(n22), .B(n21), .C(store[0]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[0]) );
  MX2X2M U71 ( .A(store[0]), .B(N117), .S0(n18), .Y(n22) );
  MX4X1M U72 ( .A(N117), .B(store[0]), .C(N129), .D(N133), .S0(n20), .S1(n19), 
        .Y(n21) );
  BUFX2M U73 ( .A(Current_State[2]), .Y(n19) );
  NAND2BX2M U74 ( .AN(store[0]), .B(n33), .Y(N133) );
  MX2X2M U75 ( .A(store[3]), .B(N120), .S0(n18), .Y(n28) );
  MX4X1M U76 ( .A(N120), .B(store[3]), .C(N136), .D(N136), .S0(n20), .S1(n19), 
        .Y(n27) );
  OAI31X1M U77 ( .A0(n57), .A1(RX_P_Data[4]), .A2(RX_P_Data[0]), .B0(n58), .Y(
        n48) );
  MX2X2M U78 ( .A(store[2]), .B(N119), .S0(n18), .Y(n26) );
  MX4X1M U79 ( .A(N119), .B(store[2]), .C(N135), .D(N135), .S0(n20), .S1(n19), 
        .Y(n25) );
  NOR2X2M U80 ( .A(n36), .B(FIFO_FULL), .Y(n40) );
  NOR2X2M U81 ( .A(n19), .B(Current_State[3]), .Y(n56) );
  NOR2X2M U82 ( .A(n20), .B(Current_State[1]), .Y(n68) );
  OAI211X2M U83 ( .A0(n33), .A1(n50), .B0(n91), .C0(n51), .Y(Next_State[1]) );
  INVX2M U84 ( .A(n48), .Y(n91) );
  AOI31X2M U85 ( .A0(n52), .A1(RX_P_Data[4]), .A2(n53), .B0(n54), .Y(n51) );
  NOR3X2M U86 ( .A(n96), .B(RX_P_Data[6]), .C(RX_P_Data[2]), .Y(n53) );
  INVX2M U87 ( .A(Current_State[3]), .Y(n100) );
  NAND3X2M U88 ( .A(Current_State[1]), .B(n29), .C(n56), .Y(n49) );
  NAND3X2M U89 ( .A(n68), .B(n19), .C(Current_State[3]), .Y(n43) );
  MX3X1M U90 ( .A(n24), .B(n23), .C(store[1]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[1]) );
  MX2X2M U91 ( .A(store[1]), .B(N118), .S0(n18), .Y(n24) );
  MX4X1M U92 ( .A(N118), .B(store[1]), .C(N134), .D(N134), .S0(n20), .S1(n19), 
        .Y(n23) );
  AOI21X2M U93 ( .A0(n55), .A1(n49), .B0(RX_D_VLD), .Y(n54) );
  INVX2M U94 ( .A(RX_P_Data[0]), .Y(n96) );
  NAND3X2M U95 ( .A(Current_State[1]), .B(n20), .C(n56), .Y(n62) );
  AND2X2M U96 ( .A(RX_P_Data[4]), .B(WrEN), .Y(M_Wr_Data[4]) );
  AND2X2M U97 ( .A(RX_P_Data[5]), .B(WrEN), .Y(M_Wr_Data[5]) );
  AND2X2M U98 ( .A(RX_P_Data[6]), .B(WrEN), .Y(M_Wr_Data[6]) );
  INVX2M U99 ( .A(FIFO_FULL), .Y(n31) );
  NAND3X2M U100 ( .A(Valid), .B(n31), .C(RdData_Valid), .Y(n46) );
  INVX2M U101 ( .A(RX_P_Data[2]), .Y(n94) );
  NAND2X2M U102 ( .A(store[1]), .B(n33), .Y(n72) );
  NAND2X2M U103 ( .A(store[2]), .B(n33), .Y(n71) );
  NAND2X2M U104 ( .A(store[3]), .B(n33), .Y(n70) );
  INVX2M U105 ( .A(RX_P_Data[3]), .Y(n93) );
  INVX2M U106 ( .A(RX_P_Data[1]), .Y(n95) );
  NOR3X2M U107 ( .A(n38), .B(Current_State[3]), .C(n29), .Y(CLK_EN) );
  NAND2X2M U108 ( .A(CLK_EN), .B(RX_D_VLD), .Y(n44) );
  OAI211X2M U109 ( .A0(n36), .A1(n31), .B0(n63), .C0(n64), .Y(n47) );
  NAND3BX2M U110 ( .AN(n57), .B(RX_P_Data[0]), .C(RX_P_Data[4]), .Y(n63) );
  OAI2BB1X2M U111 ( .A0N(ALU_OUT[0]), .A1N(n41), .B0(n82), .Y(F_Wr_Data[0]) );
  AOI22X1M U112 ( .A0(RdData[0]), .A1(n42), .B0(n40), .B1(Data[0]), .Y(n82) );
  OAI2BB1X2M U113 ( .A0N(ALU_OUT[1]), .A1N(n41), .B0(n81), .Y(F_Wr_Data[1]) );
  AOI22X1M U114 ( .A0(RdData[1]), .A1(n42), .B0(n40), .B1(Data[1]), .Y(n81) );
  OAI2BB1X2M U115 ( .A0N(ALU_OUT[2]), .A1N(n41), .B0(n80), .Y(F_Wr_Data[2]) );
  AOI22X1M U116 ( .A0(RdData[2]), .A1(n42), .B0(n40), .B1(Data[2]), .Y(n80) );
  OAI2BB1X2M U117 ( .A0N(ALU_OUT[3]), .A1N(n41), .B0(n79), .Y(F_Wr_Data[3]) );
  AOI22X1M U118 ( .A0(RdData[3]), .A1(n42), .B0(n40), .B1(Data[3]), .Y(n79) );
  OAI2BB1X2M U119 ( .A0N(ALU_OUT[4]), .A1N(n41), .B0(n78), .Y(F_Wr_Data[4]) );
  AOI22X1M U120 ( .A0(RdData[4]), .A1(n42), .B0(n40), .B1(Data[4]), .Y(n78) );
  OAI2BB1X2M U121 ( .A0N(ALU_OUT[5]), .A1N(n41), .B0(n77), .Y(F_Wr_Data[5]) );
  AOI22X1M U122 ( .A0(RdData[5]), .A1(n42), .B0(n40), .B1(Data[5]), .Y(n77) );
  OAI2BB1X2M U123 ( .A0N(ALU_OUT[6]), .A1N(n41), .B0(n76), .Y(F_Wr_Data[6]) );
  AOI22X1M U124 ( .A0(RdData[6]), .A1(n42), .B0(n40), .B1(Data[6]), .Y(n76) );
  OAI2BB1X2M U125 ( .A0N(ALU_OUT[7]), .A1N(n41), .B0(n75), .Y(F_Wr_Data[7]) );
  AOI22X1M U126 ( .A0(RdData[7]), .A1(n42), .B0(n40), .B1(Data[7]), .Y(n75) );
  AOI21X2M U127 ( .A0(n62), .A1(n98), .B0(RX_D_VLD), .Y(n61) );
  AND3X2M U128 ( .A(RX_P_Data[1]), .B(n66), .C(RX_P_Data[5]), .Y(n52) );
  NAND4X2M U129 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n65), .D(n66), .Y(n57) );
  NOR2X2M U130 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .Y(n65) );
  NAND4X2M U131 ( .A(n50), .B(n30), .C(n59), .D(n60), .Y(Next_State[0]) );
  NAND3X2M U132 ( .A(n52), .B(n96), .C(n67), .Y(n59) );
  AOI211X2M U133 ( .A0(n97), .A1(RX_D_VLD), .B0(n47), .C0(n61), .Y(n60) );
  NOR3X2M U134 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n67)
         );
  AND4X2M U135 ( .A(n56), .B(n68), .C(RX_D_VLD), .D(n69), .Y(n66) );
  NOR2X2M U136 ( .A(n93), .B(n92), .Y(n69) );
  INVX2M U137 ( .A(RX_P_Data[7]), .Y(n92) );
  AO2B2X2M U138 ( .B0(ALU_OUT[15]), .B1(n34), .A0(Data[7]), .A1N(n34), .Y(n90)
         );
  AO2B2X2M U139 ( .B0(ALU_OUT[14]), .B1(n34), .A0(Data[6]), .A1N(n34), .Y(n89)
         );
  AO2B2X2M U140 ( .B0(ALU_OUT[13]), .B1(n34), .A0(Data[5]), .A1N(n34), .Y(n88)
         );
  AO2B2X2M U141 ( .B0(ALU_OUT[12]), .B1(n34), .A0(Data[4]), .A1N(n34), .Y(n87)
         );
  AO2B2X2M U142 ( .B0(ALU_OUT[11]), .B1(n34), .A0(Data[3]), .A1N(n34), .Y(n86)
         );
  AO2B2X2M U143 ( .B0(ALU_OUT[10]), .B1(n34), .A0(Data[2]), .A1N(n34), .Y(n85)
         );
  AO2B2X2M U144 ( .B0(ALU_OUT[9]), .B1(n34), .A0(Data[1]), .A1N(n34), .Y(n84)
         );
  AO2B2X2M U145 ( .B0(ALU_OUT[8]), .B1(n34), .A0(Data[0]), .A1N(n34), .Y(n83)
         );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n17) );
  NAND2X2M U11 ( .A(n2), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U12 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U13 ( .A(a[5]), .Y(n3) );
  INVX2M U14 ( .A(n18), .Y(n2) );
  NAND2X2M U15 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U16 ( .A(a[4]), .Y(n5) );
  INVX2M U17 ( .A(n18), .Y(n4) );
  NAND2X2M U18 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U19 ( .A(a[3]), .Y(n7) );
  INVX2M U20 ( .A(n18), .Y(n6) );
  NAND2X2M U21 ( .A(n6), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U22 ( .A(a[2]), .Y(n8) );
  NAND2X2M U23 ( .A(n4), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n9) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(a[0]), .Y(n10) );
  INVX2M U29 ( .A(b[7]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n16) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[4]), .Y(n14) );
  INVX2M U33 ( .A(b[5]), .Y(n13) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[1]), .Y(n8) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
  INVX2M U7 ( .A(B[0]), .Y(n9) );
  INVX2M U8 ( .A(B[2]), .Y(n7) );
  INVX2M U9 ( .A(B[3]), .Y(n6) );
  INVX2M U10 ( .A(B[4]), .Y(n5) );
  INVX2M U11 ( .A(B[5]), .Y(n4) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U3 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U4 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  NAND2X2M U6 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U12 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U14 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U24 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U25 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U26 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U27 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U30 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U31 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[6]), .Y(n33) );
  INVX2M U38 ( .A(A[7]), .Y(n32) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(B[6]), .Y(n25) );
  INVX2M U44 ( .A(A[5]), .Y(n34) );
  INVX2M U45 ( .A(A[4]), .Y(n35) );
  INVX2M U46 ( .A(B[7]), .Y(n24) );
  INVX2M U47 ( .A(B[1]), .Y(n30) );
  INVX2M U48 ( .A(B[0]), .Y(n31) );
  INVX2M U49 ( .A(B[3]), .Y(n28) );
  INVX2M U50 ( .A(B[2]), .Y(n29) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[4]), .Y(n27) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_Valid, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST, test_si, test_se;
  output OUT_Valid;
  wire   N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N128,
         N129, N130, N131, N132, N133, N134, N135, N168, N169, N170, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n4, n5, n6, n7, n8, n9, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170;
  wire   [15:0] ALU_comp;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_comp[7]), .SI(ALU_OUT[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_comp[6]), .SI(ALU_OUT[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_comp[5]), .SI(ALU_OUT[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_comp[4]), .SI(ALU_OUT[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_comp[3]), .SI(ALU_OUT[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_comp[2]), .SI(ALU_OUT[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_comp[1]), .SI(ALU_OUT[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_comp[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_comp[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_comp[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_comp[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_comp[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_comp[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_comp[10]), .SI(ALU_OUT[9]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_comp[9]), .SI(ALU_OUT[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_comp[8]), .SI(ALU_OUT[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX1M OUT_Valid_reg ( .D(Enable), .SI(ALU_OUT[15]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(OUT_Valid) );
  BUFX2M U23 ( .A(A[6]), .Y(n32) );
  BUFX2M U24 ( .A(A[1]), .Y(n27) );
  BUFX2M U25 ( .A(A[7]), .Y(n33) );
  BUFX2M U26 ( .A(B[6]), .Y(n7) );
  INVX2M U27 ( .A(n70), .Y(n155) );
  INVX2M U28 ( .A(n114), .Y(n153) );
  INVX2M U29 ( .A(n64), .Y(n152) );
  INVX2M U30 ( .A(n119), .Y(n151) );
  NOR2BX2M U31 ( .AN(n57), .B(n148), .Y(n52) );
  OAI2BB1X2M U32 ( .A0N(N120), .A1N(n52), .B0(n53), .Y(ALU_comp[9]) );
  OAI2BB1X2M U33 ( .A0N(N121), .A1N(n52), .B0(n53), .Y(ALU_comp[10]) );
  OAI2BB1X2M U34 ( .A0N(N122), .A1N(n52), .B0(n53), .Y(ALU_comp[11]) );
  OAI2BB1X2M U35 ( .A0N(N123), .A1N(n52), .B0(n53), .Y(ALU_comp[12]) );
  OAI2BB1X2M U36 ( .A0N(N124), .A1N(n52), .B0(n53), .Y(ALU_comp[13]) );
  OAI2BB1X2M U37 ( .A0N(N125), .A1N(n52), .B0(n53), .Y(ALU_comp[14]) );
  OAI2BB1X2M U38 ( .A0N(N126), .A1N(n52), .B0(n53), .Y(ALU_comp[15]) );
  OAI21X2M U39 ( .A0(n4), .A1(n129), .B0(n128), .Y(n69) );
  NOR2X2M U40 ( .A(n118), .B(n4), .Y(n70) );
  NOR2BX2M U41 ( .AN(n130), .B(n4), .Y(n58) );
  OAI2B1X2M U42 ( .A1N(n127), .A0(n118), .B0(n128), .Y(n114) );
  NAND2X2M U43 ( .A(n156), .B(n127), .Y(n64) );
  NAND2X2M U44 ( .A(n130), .B(n127), .Y(n119) );
  INVX2M U45 ( .A(n67), .Y(n150) );
  INVX2M U46 ( .A(n129), .Y(n156) );
  NAND2X2M U47 ( .A(Enable), .B(n59), .Y(n53) );
  INVX2M U48 ( .A(Enable), .Y(n148) );
  NOR3BX2M U49 ( .AN(n5), .B(n118), .C(ALU_FUN[0]), .Y(n56) );
  NOR3BX2M U50 ( .AN(n5), .B(n154), .C(n129), .Y(n74) );
  NOR3X2M U51 ( .A(n4), .B(ALU_FUN[2]), .C(n157), .Y(n57) );
  OAI2B11X2M U52 ( .A1N(N110), .A0(n119), .B0(n155), .C0(n153), .Y(n59) );
  NOR2X2M U53 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n130) );
  NOR2X2M U54 ( .A(n154), .B(n5), .Y(n127) );
  NOR3X2M U55 ( .A(n157), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n132) );
  NAND3X2M U56 ( .A(n130), .B(n154), .C(n5), .Y(n67) );
  NAND2X2M U57 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n118) );
  NAND2X2M U58 ( .A(ALU_FUN[2]), .B(n157), .Y(n129) );
  OAI2BB2X1M U59 ( .B0(n164), .B1(n64), .A0N(N118), .A1N(n57), .Y(n63) );
  INVX2M U60 ( .A(ALU_FUN[0]), .Y(n154) );
  INVX2M U61 ( .A(ALU_FUN[1]), .Y(n157) );
  NAND3X2M U62 ( .A(n130), .B(ALU_FUN[0]), .C(n5), .Y(n128) );
  OR2X2M U63 ( .A(n5), .B(ALU_FUN[0]), .Y(n4) );
  AND4X2M U64 ( .A(N170), .B(n156), .C(n5), .D(n154), .Y(n117) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n148), .Y(ALU_comp[4]) );
  AOI22X1M U66 ( .A0(N106), .A1(n151), .B0(N97), .B1(n58), .Y(n86) );
  AOI221XLM U67 ( .A0(n29), .A1(n56), .B0(n74), .B1(n31), .C0(n89), .Y(n88) );
  AOI222X1M U68 ( .A0(N115), .A1(n57), .B0(n70), .B1(n167), .C0(n30), .C1(n152), .Y(n87) );
  AOI31X2M U69 ( .A0(n79), .A1(n80), .A2(n81), .B0(n148), .Y(ALU_comp[5]) );
  AOI22X1M U70 ( .A0(N107), .A1(n151), .B0(N98), .B1(n58), .Y(n79) );
  AOI221XLM U71 ( .A0(n30), .A1(n56), .B0(n74), .B1(n32), .C0(n82), .Y(n81) );
  AOI222X1M U72 ( .A0(N116), .A1(n57), .B0(n70), .B1(n166), .C0(n31), .C1(n152), .Y(n80) );
  AOI31X2M U73 ( .A0(n71), .A1(n72), .A2(n73), .B0(n148), .Y(ALU_comp[6]) );
  AOI22X1M U74 ( .A0(N108), .A1(n151), .B0(N99), .B1(n58), .Y(n71) );
  AOI221XLM U75 ( .A0(n31), .A1(n56), .B0(n74), .B1(n33), .C0(n75), .Y(n73) );
  AOI222X1M U76 ( .A0(N117), .A1(n57), .B0(n70), .B1(n165), .C0(n152), .C1(n32), .Y(n72) );
  AOI31X2M U77 ( .A0(n100), .A1(n101), .A2(n102), .B0(n148), .Y(ALU_comp[2])
         );
  AOI22X1M U78 ( .A0(N104), .A1(n151), .B0(N95), .B1(n58), .Y(n100) );
  AOI221XLM U79 ( .A0(n27), .A1(n56), .B0(n29), .B1(n74), .C0(n103), .Y(n102)
         );
  AOI222X1M U80 ( .A0(N113), .A1(n57), .B0(n70), .B1(n169), .C0(n28), .C1(n152), .Y(n101) );
  AOI31X2M U81 ( .A0(n93), .A1(n94), .A2(n95), .B0(n148), .Y(ALU_comp[3]) );
  AOI22X1M U82 ( .A0(N105), .A1(n151), .B0(N96), .B1(n58), .Y(n93) );
  AOI221XLM U83 ( .A0(n28), .A1(n56), .B0(n30), .B1(n74), .C0(n96), .Y(n95) );
  AOI222X1M U84 ( .A0(N114), .A1(n57), .B0(n70), .B1(n168), .C0(n29), .C1(n152), .Y(n94) );
  AOI31X2M U85 ( .A0(n120), .A1(n121), .A2(n122), .B0(n148), .Y(ALU_comp[0])
         );
  AOI22X1M U86 ( .A0(N102), .A1(n151), .B0(N93), .B1(n58), .Y(n120) );
  AOI211X2M U87 ( .A0(n27), .A1(n74), .B0(n123), .C0(n124), .Y(n122) );
  AOI222X1M U88 ( .A0(N111), .A1(n57), .B0(n70), .B1(n170), .C0(n9), .C1(n152), 
        .Y(n121) );
  AOI31X2M U89 ( .A0(n107), .A1(n108), .A2(n109), .B0(n148), .Y(ALU_comp[1])
         );
  AOI211X2M U90 ( .A0(n9), .A1(n56), .B0(n110), .C0(n111), .Y(n109) );
  AOI222X1M U91 ( .A0(n27), .A1(n152), .B0(n28), .B1(n74), .C0(n70), .C1(n144), 
        .Y(n108) );
  AOI222X1M U92 ( .A0(N94), .A1(n58), .B0(N112), .B1(n57), .C0(N103), .C1(n151), .Y(n107) );
  AOI31X2M U93 ( .A0(n60), .A1(n61), .A2(n62), .B0(n148), .Y(ALU_comp[7]) );
  AOI22X1M U94 ( .A0(n32), .A1(n56), .B0(n70), .B1(n164), .Y(n60) );
  AOI221XLM U95 ( .A0(N109), .A1(n151), .B0(N100), .B1(n58), .C0(n63), .Y(n62)
         );
  AOI222X1M U96 ( .A0(n8), .A1(n149), .B0(N135), .B1(n65), .C0(n66), .C1(n158), 
        .Y(n61) );
  AOI21X2M U97 ( .A0(n54), .A1(n55), .B0(n148), .Y(ALU_comp[8]) );
  AOI21X2M U98 ( .A0(N101), .A1(n58), .B0(n59), .Y(n54) );
  AOI22X1M U99 ( .A0(n33), .A1(n56), .B0(N119), .B1(n57), .Y(n55) );
  OAI221X1M U100 ( .A0(n28), .A1(n153), .B0(n67), .B1(n169), .C0(n155), .Y(
        n106) );
  OAI221X1M U101 ( .A0(n29), .A1(n153), .B0(n67), .B1(n168), .C0(n155), .Y(n99) );
  OAI221X1M U102 ( .A0(n30), .A1(n153), .B0(n67), .B1(n167), .C0(n155), .Y(n92) );
  OAI221X1M U103 ( .A0(n31), .A1(n153), .B0(n67), .B1(n166), .C0(n155), .Y(n85) );
  OAI221X1M U104 ( .A0(n32), .A1(n153), .B0(n67), .B1(n165), .C0(n155), .Y(n78) );
  OAI221X1M U105 ( .A0(n33), .A1(n153), .B0(n164), .B1(n67), .C0(n155), .Y(n66) );
  INVX2M U106 ( .A(n34), .Y(n146) );
  OAI2B2X1M U107 ( .A1N(n6), .A0(n112), .B0(n6), .B1(n113), .Y(n111) );
  AOI221XLM U108 ( .A0(n150), .A1(n144), .B0(n27), .B1(n69), .C0(n152), .Y(
        n112) );
  AOI221XLM U109 ( .A0(n27), .A1(n150), .B0(n114), .B1(n144), .C0(n70), .Y(
        n113) );
  INVX2M U110 ( .A(n45), .Y(n147) );
  OAI21X2M U111 ( .A0(n76), .A1(n159), .B0(n77), .Y(n75) );
  AOI22X1M U112 ( .A0(N134), .A1(n65), .B0(n78), .B1(n159), .Y(n77) );
  AOI221XLM U113 ( .A0(n150), .A1(n165), .B0(n32), .B1(n69), .C0(n152), .Y(n76) );
  INVX2M U114 ( .A(n7), .Y(n159) );
  INVX2M U115 ( .A(n68), .Y(n149) );
  AOI221XLM U116 ( .A0(n69), .A1(n33), .B0(n164), .B1(n150), .C0(n152), .Y(n68) );
  BUFX2M U117 ( .A(ALU_FUN[3]), .Y(n5) );
  OAI2BB1X2M U118 ( .A0N(N128), .A1N(n65), .B0(n131), .Y(n123) );
  AOI31X2M U119 ( .A0(N168), .A1(n5), .A2(n132), .B0(n117), .Y(n131) );
  OAI2BB1X2M U120 ( .A0N(N129), .A1N(n65), .B0(n115), .Y(n110) );
  AOI31X2M U121 ( .A0(N169), .A1(n5), .A2(n116), .B0(n117), .Y(n115) );
  NOR3X2M U122 ( .A(n154), .B(ALU_FUN[2]), .C(n157), .Y(n116) );
  INVX2M U123 ( .A(n33), .Y(n164) );
  INVX2M U124 ( .A(n32), .Y(n165) );
  INVX2M U125 ( .A(n9), .Y(n170) );
  INVX2M U126 ( .A(n28), .Y(n169) );
  INVX2M U127 ( .A(n29), .Y(n168) );
  INVX2M U128 ( .A(n31), .Y(n166) );
  INVX2M U129 ( .A(n30), .Y(n167) );
  INVX2M U130 ( .A(n27), .Y(n144) );
  INVX2M U131 ( .A(n8), .Y(n158) );
  OAI2B2X1M U132 ( .A1N(B[0]), .A0(n125), .B0(B[0]), .B1(n126), .Y(n124) );
  AOI221XLM U133 ( .A0(n150), .A1(n170), .B0(n9), .B1(n69), .C0(n152), .Y(n125) );
  AOI221XLM U134 ( .A0(n9), .A1(n150), .B0(n114), .B1(n170), .C0(n70), .Y(n126) );
  AND3X2M U135 ( .A(n127), .B(ALU_FUN[1]), .C(n133), .Y(n65) );
  AOI21X2M U136 ( .A0(n134), .A1(n135), .B0(ALU_FUN[2]), .Y(n133) );
  NOR4X1M U137 ( .A(n8), .B(n7), .C(B[5]), .D(B[4]), .Y(n135) );
  NOR4X1M U138 ( .A(B[3]), .B(B[2]), .C(n6), .D(B[0]), .Y(n134) );
  OAI21X2M U139 ( .A0(n104), .A1(n163), .B0(n105), .Y(n103) );
  AOI22X1M U140 ( .A0(N130), .A1(n65), .B0(n106), .B1(n163), .Y(n105) );
  AOI221XLM U141 ( .A0(n150), .A1(n169), .B0(n28), .B1(n69), .C0(n152), .Y(
        n104) );
  INVX2M U142 ( .A(B[2]), .Y(n163) );
  OAI21X2M U143 ( .A0(n97), .A1(n162), .B0(n98), .Y(n96) );
  AOI22X1M U144 ( .A0(N131), .A1(n65), .B0(n99), .B1(n162), .Y(n98) );
  AOI221XLM U145 ( .A0(n150), .A1(n168), .B0(n29), .B1(n69), .C0(n152), .Y(n97) );
  INVX2M U146 ( .A(B[3]), .Y(n162) );
  OAI21X2M U147 ( .A0(n90), .A1(n161), .B0(n91), .Y(n89) );
  AOI22X1M U148 ( .A0(N132), .A1(n65), .B0(n92), .B1(n161), .Y(n91) );
  AOI221XLM U149 ( .A0(n150), .A1(n167), .B0(n30), .B1(n69), .C0(n152), .Y(n90) );
  INVX2M U150 ( .A(B[4]), .Y(n161) );
  OAI21X2M U151 ( .A0(n83), .A1(n160), .B0(n84), .Y(n82) );
  AOI22X1M U152 ( .A0(N133), .A1(n65), .B0(n85), .B1(n160), .Y(n84) );
  AOI221XLM U153 ( .A0(n150), .A1(n166), .B0(n31), .B1(n69), .C0(n152), .Y(n83) );
  INVX2M U154 ( .A(B[5]), .Y(n160) );
  BUFX2M U155 ( .A(A[0]), .Y(n9) );
  BUFX2M U156 ( .A(A[2]), .Y(n28) );
  BUFX2M U157 ( .A(A[3]), .Y(n29) );
  BUFX2M U158 ( .A(A[5]), .Y(n31) );
  BUFX2M U159 ( .A(A[4]), .Y(n30) );
  BUFX2M U160 ( .A(B[7]), .Y(n8) );
  BUFX2M U161 ( .A(B[1]), .Y(n6) );
  INVX2M U162 ( .A(B[0]), .Y(n145) );
  NOR2X1M U163 ( .A(n164), .B(n8), .Y(n140) );
  NAND2BX1M U164 ( .AN(B[4]), .B(n30), .Y(n49) );
  NAND2BX1M U165 ( .AN(n30), .B(B[4]), .Y(n38) );
  CLKNAND2X2M U166 ( .A(n49), .B(n38), .Y(n51) );
  NOR2X1M U167 ( .A(n162), .B(n29), .Y(n46) );
  NOR2X1M U168 ( .A(n163), .B(n28), .Y(n37) );
  NOR2X1M U169 ( .A(n145), .B(n9), .Y(n34) );
  CLKNAND2X2M U170 ( .A(n28), .B(n163), .Y(n48) );
  NAND2BX1M U171 ( .AN(n37), .B(n48), .Y(n43) );
  AOI21X1M U172 ( .A0(n34), .A1(n144), .B0(n6), .Y(n35) );
  AOI211X1M U173 ( .A0(n27), .A1(n146), .B0(n43), .C0(n35), .Y(n36) );
  CLKNAND2X2M U174 ( .A(n29), .B(n162), .Y(n47) );
  OAI31X1M U175 ( .A0(n46), .A1(n37), .A2(n36), .B0(n47), .Y(n39) );
  NAND2BX1M U176 ( .AN(n31), .B(B[5]), .Y(n138) );
  OAI211X1M U177 ( .A0(n51), .A1(n39), .B0(n38), .C0(n138), .Y(n40) );
  NAND2BX1M U178 ( .AN(B[5]), .B(n31), .Y(n50) );
  XNOR2X1M U179 ( .A(n32), .B(n7), .Y(n137) );
  AOI32X1M U180 ( .A0(n40), .A1(n50), .A2(n137), .B0(n7), .B1(n165), .Y(n41)
         );
  CLKNAND2X2M U181 ( .A(n8), .B(n164), .Y(n141) );
  OAI21X1M U182 ( .A0(n140), .A1(n41), .B0(n141), .Y(N170) );
  CLKNAND2X2M U183 ( .A(n9), .B(n145), .Y(n44) );
  OA21X1M U184 ( .A0(n44), .A1(n144), .B0(n6), .Y(n42) );
  AOI211X1M U185 ( .A0(n44), .A1(n144), .B0(n43), .C0(n42), .Y(n45) );
  AOI31X1M U186 ( .A0(n147), .A1(n48), .A2(n47), .B0(n46), .Y(n136) );
  OAI2B11X1M U187 ( .A1N(n136), .A0(n51), .B0(n50), .C0(n49), .Y(n139) );
  AOI32X1M U188 ( .A0(n139), .A1(n138), .A2(n137), .B0(n32), .B1(n159), .Y(
        n142) );
  AOI2B1X1M U189 ( .A1N(n142), .A0(n141), .B0(n140), .Y(n143) );
  CLKINVX1M U190 ( .A(n143), .Y(N169) );
  NOR2X1M U191 ( .A(N170), .B(N169), .Y(N168) );
  ALU_DW_div_uns_0 div_62 ( .a({n33, n32, n31, n30, n29, n28, n27, n9}), .b({
        n8, n7, B[5:2], n6, B[0]}), .quotient({N135, N134, N133, N132, N131, 
        N130, N129, N128}) );
  ALU_DW01_sub_0 sub_53 ( .A({1'b0, n33, n32, n31, n30, n29, n28, n27, n9}), 
        .B({1'b0, n8, n7, B[5:2], n6, B[0]}), .CI(1'b0), .DIFF({N110, N109, 
        N108, N107, N106, N105, N104, N103, N102}) );
  ALU_DW01_add_0 add_51 ( .A({1'b0, n33, n32, n31, n30, n29, n28, n27, n9}), 
        .B({1'b0, n8, n7, B[5:2], n6, B[0]}), .CI(1'b0), .SUM({N101, N100, N99, 
        N98, N97, N96, N95, N94, N93}) );
  ALU_DW02_mult_0 mult_55 ( .A({n33, n32, n31, n30, n29, n28, n27, n9}), .B({
        n8, n7, B[5:2], n6, B[0]}), .TC(1'b0), .PRODUCT({N126, N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111}) );
endmodule


module Clock_Gating ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX2M U0_clk_gate ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module Reg_File_test_1 ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , N36, N37, N38, N39, N40, N41,
         N42, N43, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n368, n369, n370, n371;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \mem[15][7] ;
  assign test_so1 = \mem[12][6] ;

  SDFFRQX2M \mem_reg[13][7]  ( .D(n296), .SI(\mem[13][6] ), .SE(n370), .CK(CLK), .RN(n348), .Q(\mem[13][7] ) );
  SDFFRQX2M \mem_reg[13][6]  ( .D(n295), .SI(\mem[13][5] ), .SE(n369), .CK(CLK), .RN(n348), .Q(\mem[13][6] ) );
  SDFFRQX2M \mem_reg[13][5]  ( .D(n294), .SI(\mem[13][4] ), .SE(n368), .CK(CLK), .RN(n348), .Q(\mem[13][5] ) );
  SDFFRQX2M \mem_reg[13][4]  ( .D(n293), .SI(\mem[13][3] ), .SE(n371), .CK(CLK), .RN(n348), .Q(\mem[13][4] ) );
  SDFFRQX2M \mem_reg[13][3]  ( .D(n292), .SI(\mem[13][2] ), .SE(n370), .CK(CLK), .RN(n348), .Q(\mem[13][3] ) );
  SDFFRQX2M \mem_reg[13][2]  ( .D(n291), .SI(\mem[13][1] ), .SE(n369), .CK(CLK), .RN(n348), .Q(\mem[13][2] ) );
  SDFFRQX2M \mem_reg[13][1]  ( .D(n290), .SI(\mem[13][0] ), .SE(n368), .CK(CLK), .RN(n348), .Q(\mem[13][1] ) );
  SDFFRQX2M \mem_reg[13][0]  ( .D(n289), .SI(\mem[12][7] ), .SE(n371), .CK(CLK), .RN(n348), .Q(\mem[13][0] ) );
  SDFFRQX2M \mem_reg[9][7]  ( .D(n264), .SI(\mem[9][6] ), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(\mem[9][7] ) );
  SDFFRQX2M \mem_reg[9][6]  ( .D(n263), .SI(\mem[9][5] ), .SE(n369), .CK(CLK), 
        .RN(n346), .Q(\mem[9][6] ) );
  SDFFRQX2M \mem_reg[9][5]  ( .D(n262), .SI(\mem[9][4] ), .SE(n368), .CK(CLK), 
        .RN(n346), .Q(\mem[9][5] ) );
  SDFFRQX2M \mem_reg[9][4]  ( .D(n261), .SI(\mem[9][3] ), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\mem[9][4] ) );
  SDFFRQX2M \mem_reg[9][3]  ( .D(n260), .SI(\mem[9][2] ), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(\mem[9][3] ) );
  SDFFRQX2M \mem_reg[9][2]  ( .D(n259), .SI(\mem[9][1] ), .SE(n369), .CK(CLK), 
        .RN(n346), .Q(\mem[9][2] ) );
  SDFFRQX2M \mem_reg[9][1]  ( .D(n258), .SI(\mem[9][0] ), .SE(n368), .CK(CLK), 
        .RN(n346), .Q(\mem[9][1] ) );
  SDFFRQX2M \mem_reg[9][0]  ( .D(n257), .SI(\mem[8][7] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\mem[9][0] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n232), .SI(\mem[5][6] ), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n231), .SI(\mem[5][5] ), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n230), .SI(\mem[5][4] ), .SE(n368), .CK(CLK), 
        .RN(n343), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n229), .SI(\mem[5][3] ), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n228), .SI(\mem[5][2] ), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n227), .SI(\mem[5][1] ), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n226), .SI(\mem[5][0] ), .SE(n368), .CK(CLK), 
        .RN(n343), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n225), .SI(\mem[4][7] ), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[15][7]  ( .D(n312), .SI(\mem[15][6] ), .SE(n370), .CK(CLK), .RN(n340), .Q(\mem[15][7] ) );
  SDFFRQX2M \mem_reg[15][6]  ( .D(n311), .SI(\mem[15][5] ), .SE(n369), .CK(CLK), .RN(n349), .Q(\mem[15][6] ) );
  SDFFRQX2M \mem_reg[15][5]  ( .D(n310), .SI(\mem[15][4] ), .SE(n368), .CK(CLK), .RN(n349), .Q(\mem[15][5] ) );
  SDFFRQX2M \mem_reg[15][4]  ( .D(n309), .SI(\mem[15][3] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\mem[15][4] ) );
  SDFFRQX2M \mem_reg[15][3]  ( .D(n308), .SI(\mem[15][2] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\mem[15][3] ) );
  SDFFRQX2M \mem_reg[15][2]  ( .D(n307), .SI(\mem[15][1] ), .SE(n369), .CK(CLK), .RN(n349), .Q(\mem[15][2] ) );
  SDFFRQX2M \mem_reg[15][1]  ( .D(n306), .SI(\mem[15][0] ), .SE(n368), .CK(CLK), .RN(n349), .Q(\mem[15][1] ) );
  SDFFRQX2M \mem_reg[15][0]  ( .D(n305), .SI(\mem[14][7] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\mem[15][0] ) );
  SDFFRQX2M \mem_reg[11][7]  ( .D(n280), .SI(\mem[11][6] ), .SE(n370), .CK(CLK), .RN(n347), .Q(\mem[11][7] ) );
  SDFFRQX2M \mem_reg[11][6]  ( .D(n279), .SI(\mem[11][5] ), .SE(n369), .CK(CLK), .RN(n347), .Q(\mem[11][6] ) );
  SDFFRQX2M \mem_reg[11][5]  ( .D(n278), .SI(\mem[11][4] ), .SE(n368), .CK(CLK), .RN(n347), .Q(\mem[11][5] ) );
  SDFFRQX2M \mem_reg[11][4]  ( .D(n277), .SI(\mem[11][3] ), .SE(n371), .CK(CLK), .RN(n347), .Q(\mem[11][4] ) );
  SDFFRQX2M \mem_reg[11][3]  ( .D(n276), .SI(\mem[11][2] ), .SE(n370), .CK(CLK), .RN(n347), .Q(\mem[11][3] ) );
  SDFFRQX2M \mem_reg[11][2]  ( .D(n275), .SI(\mem[11][1] ), .SE(n369), .CK(CLK), .RN(n347), .Q(\mem[11][2] ) );
  SDFFRQX2M \mem_reg[11][1]  ( .D(n274), .SI(\mem[11][0] ), .SE(n368), .CK(CLK), .RN(n347), .Q(\mem[11][1] ) );
  SDFFRQX2M \mem_reg[11][0]  ( .D(n273), .SI(\mem[10][7] ), .SE(n371), .CK(CLK), .RN(n347), .Q(\mem[11][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n248), .SI(\mem[7][6] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n247), .SI(\mem[7][5] ), .SE(n369), .CK(CLK), 
        .RN(n345), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n246), .SI(\mem[7][4] ), .SE(n368), .CK(CLK), 
        .RN(n345), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n245), .SI(\mem[7][3] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n244), .SI(\mem[7][2] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n243), .SI(\mem[7][1] ), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n242), .SI(\mem[7][0] ), .SE(n368), .CK(CLK), 
        .RN(n344), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n241), .SI(\mem[6][7] ), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[14][7]  ( .D(n304), .SI(\mem[14][6] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\mem[14][7] ) );
  SDFFRQX2M \mem_reg[14][6]  ( .D(n303), .SI(\mem[14][5] ), .SE(n369), .CK(CLK), .RN(n349), .Q(\mem[14][6] ) );
  SDFFRQX2M \mem_reg[14][5]  ( .D(n302), .SI(\mem[14][4] ), .SE(n368), .CK(CLK), .RN(n349), .Q(\mem[14][5] ) );
  SDFFRQX2M \mem_reg[14][4]  ( .D(n301), .SI(\mem[14][3] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\mem[14][4] ) );
  SDFFRQX2M \mem_reg[14][3]  ( .D(n300), .SI(\mem[14][2] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\mem[14][3] ) );
  SDFFRQX2M \mem_reg[14][2]  ( .D(n299), .SI(\mem[14][1] ), .SE(n369), .CK(CLK), .RN(n348), .Q(\mem[14][2] ) );
  SDFFRQX2M \mem_reg[14][1]  ( .D(n298), .SI(\mem[14][0] ), .SE(n368), .CK(CLK), .RN(n348), .Q(\mem[14][1] ) );
  SDFFRQX2M \mem_reg[14][0]  ( .D(n297), .SI(\mem[13][7] ), .SE(n371), .CK(CLK), .RN(n348), .Q(\mem[14][0] ) );
  SDFFRQX2M \mem_reg[10][7]  ( .D(n272), .SI(\mem[10][6] ), .SE(n370), .CK(CLK), .RN(n347), .Q(\mem[10][7] ) );
  SDFFRQX2M \mem_reg[10][6]  ( .D(n271), .SI(\mem[10][5] ), .SE(n369), .CK(CLK), .RN(n346), .Q(\mem[10][6] ) );
  SDFFRQX2M \mem_reg[10][5]  ( .D(n270), .SI(\mem[10][4] ), .SE(n368), .CK(CLK), .RN(n346), .Q(\mem[10][5] ) );
  SDFFRQX2M \mem_reg[10][4]  ( .D(n269), .SI(\mem[10][3] ), .SE(n371), .CK(CLK), .RN(n346), .Q(\mem[10][4] ) );
  SDFFRQX2M \mem_reg[10][3]  ( .D(n268), .SI(\mem[10][2] ), .SE(n370), .CK(CLK), .RN(n346), .Q(\mem[10][3] ) );
  SDFFRQX2M \mem_reg[10][2]  ( .D(n267), .SI(\mem[10][1] ), .SE(n369), .CK(CLK), .RN(n346), .Q(\mem[10][2] ) );
  SDFFRQX2M \mem_reg[10][1]  ( .D(n266), .SI(\mem[10][0] ), .SE(n368), .CK(CLK), .RN(n346), .Q(\mem[10][1] ) );
  SDFFRQX2M \mem_reg[10][0]  ( .D(n265), .SI(\mem[9][7] ), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\mem[10][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n240), .SI(\mem[6][6] ), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n239), .SI(\mem[6][5] ), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n238), .SI(\mem[6][4] ), .SE(n368), .CK(CLK), 
        .RN(n344), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n237), .SI(\mem[6][3] ), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n236), .SI(\mem[6][2] ), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n235), .SI(\mem[6][1] ), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n234), .SI(\mem[6][0] ), .SE(n368), .CK(CLK), 
        .RN(n344), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n233), .SI(\mem[5][7] ), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n288), .SI(test_si3), .SE(n370), .CK(CLK), 
        .RN(n348), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n287), .SI(\mem[12][5] ), .SE(n369), .CK(CLK), .RN(n348), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n286), .SI(\mem[12][4] ), .SE(n368), .CK(CLK), .RN(n348), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n285), .SI(\mem[12][3] ), .SE(n371), .CK(CLK), .RN(n347), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n284), .SI(\mem[12][2] ), .SE(n370), .CK(CLK), .RN(n347), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n283), .SI(\mem[12][1] ), .SE(n369), .CK(CLK), .RN(n347), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n282), .SI(\mem[12][0] ), .SE(n368), .CK(CLK), .RN(n347), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n281), .SI(\mem[11][7] ), .SE(n371), .CK(CLK), .RN(n347), .Q(\mem[12][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n256), .SI(\mem[8][6] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n255), .SI(\mem[8][5] ), .SE(n369), .CK(CLK), 
        .RN(n345), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n254), .SI(\mem[8][4] ), .SE(n368), .CK(CLK), 
        .RN(n345), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n253), .SI(\mem[8][3] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n252), .SI(\mem[8][2] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n251), .SI(\mem[8][1] ), .SE(n369), .CK(CLK), 
        .RN(n345), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n250), .SI(\mem[8][0] ), .SE(n368), .CK(CLK), 
        .RN(n345), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n249), .SI(\mem[7][7] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n224), .SI(\mem[4][6] ), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n223), .SI(\mem[4][5] ), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n222), .SI(\mem[4][4] ), .SE(n368), .CK(CLK), 
        .RN(n343), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n221), .SI(\mem[4][3] ), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n220), .SI(\mem[4][2] ), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n219), .SI(\mem[4][1] ), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n218), .SI(\mem[4][0] ), .SE(n368), .CK(CLK), 
        .RN(n343), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n217), .SI(REG3[7]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(\mem[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n369), .CK(CLK), 
        .RN(n340), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n368), .CK(CLK), 
        .RN(n340), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n371), .CK(CLK), 
        .RN(n340), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n370), .CK(CLK), 
        .RN(n340), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n369), .CK(CLK), 
        .RN(n340), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n368), .CK(CLK), 
        .RN(n340), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_Valid), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(RdData[0]) );
  SDFFSQX2M \mem_reg[2][0]  ( .D(n201), .SI(test_si2), .SE(test_se), .CK(CLK), 
        .SN(n340), .Q(REG2[0]) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n200), .SI(REG1[6]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(REG1[7]) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n199), .SI(REG1[5]), .SE(n369), .CK(CLK), 
        .RN(n341), .Q(REG1[6]) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n194), .SI(REG1[0]), .SE(n368), .CK(CLK), 
        .RN(n341), .Q(REG1[1]) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n192), .SI(REG0[6]), .SE(n371), .CK(CLK), 
        .RN(n341), .Q(REG0[7]) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n191), .SI(REG0[5]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(REG0[6]) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n190), .SI(REG0[4]), .SE(n369), .CK(CLK), 
        .RN(n341), .Q(REG0[5]) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n189), .SI(REG0[3]), .SE(n368), .CK(CLK), 
        .RN(n341), .Q(REG0[4]) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n188), .SI(REG0[2]), .SE(n371), .CK(CLK), 
        .RN(n341), .Q(REG0[3]) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n187), .SI(REG0[1]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(REG0[2]) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n186), .SI(REG0[0]), .SE(n369), .CK(CLK), 
        .RN(n340), .Q(REG0[1]) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n185), .SI(RdData[7]), .SE(n368), .CK(CLK), 
        .RN(n340), .Q(REG0[0]) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n202), .SI(REG2[0]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG2[1]) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n197), .SI(REG1[3]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(REG1[4]) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n198), .SI(REG1[4]), .SE(n369), .CK(CLK), 
        .RN(n342), .Q(REG1[5]) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n216), .SI(REG3[6]), .SE(n368), .CK(CLK), 
        .RN(n342), .Q(REG3[7]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n355), .SI(test_si1), .SE(n371), .CK(CLK), 
        .RN(n340), .Q(RdData_Valid) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n215), .SI(REG3[5]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(REG3[6]) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n212), .SI(REG3[2]), .SE(n369), .CK(CLK), 
        .RN(n342), .Q(REG3[3]) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n213), .SI(REG3[3]), .SE(n368), .CK(CLK), 
        .RN(n342), .Q(REG3[4]) );
  SDFFSQX2M \mem_reg[3][5]  ( .D(n214), .SI(REG3[4]), .SE(n368), .CK(CLK), 
        .SN(n340), .Q(REG3[5]) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n209), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG3[0]) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n211), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(REG3[2]) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n210), .SI(REG3[0]), .SE(n369), .CK(CLK), 
        .RN(n342), .Q(REG3[1]) );
  SDFFSQX2M \mem_reg[2][7]  ( .D(n208), .SI(REG2[6]), .SE(n371), .CK(CLK), 
        .SN(n340), .Q(REG2[7]) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n205), .SI(REG2[3]), .SE(n368), .CK(CLK), 
        .RN(n342), .Q(REG2[4]) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n204), .SI(REG2[2]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG2[3]) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n203), .SI(REG2[1]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(REG2[2]) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n206), .SI(REG2[4]), .SE(n369), .CK(CLK), 
        .RN(n342), .Q(REG2[5]) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n195), .SI(REG1[1]), .SE(n368), .CK(CLK), 
        .RN(n341), .Q(REG1[2]) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n196), .SI(REG1[2]), .SE(n371), .CK(CLK), 
        .RN(n341), .Q(REG1[3]) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n193), .SI(REG0[7]), .SE(n370), .CK(CLK), 
        .RN(n341), .Q(REG1[0]) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n207), .SI(REG2[5]), .SE(n369), .CK(CLK), 
        .RN(n342), .Q(REG2[6]) );
  NOR2X2M U140 ( .A(n339), .B(N13), .Y(n156) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n151) );
  NOR2BX2M U142 ( .AN(N13), .B(N12), .Y(n159) );
  NOR2BX2M U143 ( .AN(N13), .B(n339), .Y(n162) );
  INVX2M U144 ( .A(WrData[4]), .Y(n361) );
  INVX2M U145 ( .A(WrData[5]), .Y(n362) );
  INVX2M U146 ( .A(WrData[6]), .Y(n363) );
  INVX2M U147 ( .A(n335), .Y(n336) );
  INVX2M U148 ( .A(n335), .Y(n337) );
  BUFX2M U149 ( .A(n338), .Y(n335) );
  INVX2M U150 ( .A(n339), .Y(n334) );
  INVX2M U151 ( .A(n149), .Y(n355) );
  NOR2BX2M U152 ( .AN(n163), .B(N11), .Y(n152) );
  NOR2BX2M U153 ( .AN(n163), .B(n338), .Y(n154) );
  NOR2BX2M U154 ( .AN(n175), .B(N11), .Y(n167) );
  NOR2BX2M U155 ( .AN(n175), .B(n338), .Y(n169) );
  NAND2X2M U156 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U157 ( .A(n167), .B(n151), .Y(n166) );
  NAND2X2M U158 ( .A(n169), .B(n151), .Y(n168) );
  NAND2X2M U159 ( .A(n167), .B(n156), .Y(n170) );
  NAND2X2M U160 ( .A(n169), .B(n156), .Y(n171) );
  NAND2X2M U161 ( .A(n156), .B(n152), .Y(n155) );
  NAND2X2M U162 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U163 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U164 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U165 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U166 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U167 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U168 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U169 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U170 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U171 ( .A(n151), .B(n152), .Y(n150) );
  NOR2BX2M U172 ( .AN(WrEn), .B(RdEn), .Y(n165) );
  NAND2BX2M U173 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  BUFX2M U174 ( .A(n354), .Y(n341) );
  BUFX2M U175 ( .A(n353), .Y(n342) );
  BUFX2M U176 ( .A(n353), .Y(n343) );
  BUFX2M U177 ( .A(n352), .Y(n344) );
  BUFX2M U178 ( .A(n352), .Y(n345) );
  BUFX2M U179 ( .A(n351), .Y(n346) );
  BUFX2M U180 ( .A(n351), .Y(n347) );
  BUFX2M U181 ( .A(n350), .Y(n348) );
  BUFX2M U182 ( .A(n354), .Y(n340) );
  BUFX2M U183 ( .A(n350), .Y(n349) );
  NOR2BX2M U184 ( .AN(n165), .B(N14), .Y(n163) );
  AND2X2M U185 ( .A(N14), .B(n165), .Y(n175) );
  INVX2M U186 ( .A(N11), .Y(n338) );
  INVX2M U187 ( .A(WrData[0]), .Y(n360) );
  INVX2M U188 ( .A(WrData[1]), .Y(n359) );
  INVX2M U189 ( .A(WrData[2]), .Y(n358) );
  INVX2M U190 ( .A(WrData[3]), .Y(n357) );
  INVX2M U191 ( .A(WrData[7]), .Y(n356) );
  INVX2M U192 ( .A(N12), .Y(n339) );
  BUFX2M U193 ( .A(RST), .Y(n353) );
  BUFX2M U194 ( .A(RST), .Y(n352) );
  BUFX2M U195 ( .A(RST), .Y(n351) );
  BUFX2M U196 ( .A(RST), .Y(n350) );
  BUFX2M U197 ( .A(RST), .Y(n354) );
  OAI2BB2X1M U198 ( .B0(n150), .B1(n360), .A0N(REG0[0]), .A1N(n150), .Y(n185)
         );
  OAI2BB2X1M U199 ( .B0(n150), .B1(n359), .A0N(REG0[1]), .A1N(n150), .Y(n186)
         );
  OAI2BB2X1M U200 ( .B0(n150), .B1(n358), .A0N(REG0[2]), .A1N(n150), .Y(n187)
         );
  OAI2BB2X1M U201 ( .B0(n150), .B1(n357), .A0N(REG0[3]), .A1N(n150), .Y(n188)
         );
  OAI2BB2X1M U202 ( .B0(n150), .B1(n361), .A0N(REG0[4]), .A1N(n150), .Y(n189)
         );
  OAI2BB2X1M U203 ( .B0(n150), .B1(n362), .A0N(REG0[5]), .A1N(n150), .Y(n190)
         );
  OAI2BB2X1M U204 ( .B0(n150), .B1(n363), .A0N(REG0[6]), .A1N(n150), .Y(n191)
         );
  OAI2BB2X1M U205 ( .B0(n150), .B1(n356), .A0N(REG0[7]), .A1N(n150), .Y(n192)
         );
  OAI2BB2X1M U206 ( .B0(n360), .B1(n153), .A0N(REG1[0]), .A1N(n153), .Y(n193)
         );
  OAI2BB2X1M U207 ( .B0(n359), .B1(n153), .A0N(REG1[1]), .A1N(n153), .Y(n194)
         );
  OAI2BB2X1M U208 ( .B0(n358), .B1(n153), .A0N(REG1[2]), .A1N(n153), .Y(n195)
         );
  OAI2BB2X1M U209 ( .B0(n357), .B1(n153), .A0N(REG1[3]), .A1N(n153), .Y(n196)
         );
  OAI2BB2X1M U210 ( .B0(n361), .B1(n153), .A0N(REG1[4]), .A1N(n153), .Y(n197)
         );
  OAI2BB2X1M U211 ( .B0(n362), .B1(n153), .A0N(REG1[5]), .A1N(n153), .Y(n198)
         );
  OAI2BB2X1M U212 ( .B0(n363), .B1(n153), .A0N(REG1[6]), .A1N(n153), .Y(n199)
         );
  OAI2BB2X1M U213 ( .B0(n356), .B1(n153), .A0N(REG1[7]), .A1N(n153), .Y(n200)
         );
  OAI2BB2X1M U214 ( .B0(n360), .B1(n158), .A0N(\mem[4][0] ), .A1N(n158), .Y(
        n217) );
  OAI2BB2X1M U215 ( .B0(n359), .B1(n158), .A0N(\mem[4][1] ), .A1N(n158), .Y(
        n218) );
  OAI2BB2X1M U216 ( .B0(n358), .B1(n158), .A0N(\mem[4][2] ), .A1N(n158), .Y(
        n219) );
  OAI2BB2X1M U217 ( .B0(n357), .B1(n158), .A0N(\mem[4][3] ), .A1N(n158), .Y(
        n220) );
  OAI2BB2X1M U218 ( .B0(n361), .B1(n158), .A0N(\mem[4][4] ), .A1N(n158), .Y(
        n221) );
  OAI2BB2X1M U219 ( .B0(n362), .B1(n158), .A0N(\mem[4][5] ), .A1N(n158), .Y(
        n222) );
  OAI2BB2X1M U220 ( .B0(n363), .B1(n158), .A0N(\mem[4][6] ), .A1N(n158), .Y(
        n223) );
  OAI2BB2X1M U221 ( .B0(n356), .B1(n158), .A0N(\mem[4][7] ), .A1N(n158), .Y(
        n224) );
  OAI2BB2X1M U222 ( .B0(n360), .B1(n160), .A0N(\mem[5][0] ), .A1N(n160), .Y(
        n225) );
  OAI2BB2X1M U223 ( .B0(n359), .B1(n160), .A0N(\mem[5][1] ), .A1N(n160), .Y(
        n226) );
  OAI2BB2X1M U224 ( .B0(n358), .B1(n160), .A0N(\mem[5][2] ), .A1N(n160), .Y(
        n227) );
  OAI2BB2X1M U225 ( .B0(n357), .B1(n160), .A0N(\mem[5][3] ), .A1N(n160), .Y(
        n228) );
  OAI2BB2X1M U226 ( .B0(n361), .B1(n160), .A0N(\mem[5][4] ), .A1N(n160), .Y(
        n229) );
  OAI2BB2X1M U227 ( .B0(n362), .B1(n160), .A0N(\mem[5][5] ), .A1N(n160), .Y(
        n230) );
  OAI2BB2X1M U228 ( .B0(n363), .B1(n160), .A0N(\mem[5][6] ), .A1N(n160), .Y(
        n231) );
  OAI2BB2X1M U229 ( .B0(n356), .B1(n160), .A0N(\mem[5][7] ), .A1N(n160), .Y(
        n232) );
  OAI2BB2X1M U230 ( .B0(n360), .B1(n161), .A0N(\mem[6][0] ), .A1N(n161), .Y(
        n233) );
  OAI2BB2X1M U231 ( .B0(n359), .B1(n161), .A0N(\mem[6][1] ), .A1N(n161), .Y(
        n234) );
  OAI2BB2X1M U232 ( .B0(n358), .B1(n161), .A0N(\mem[6][2] ), .A1N(n161), .Y(
        n235) );
  OAI2BB2X1M U233 ( .B0(n357), .B1(n161), .A0N(\mem[6][3] ), .A1N(n161), .Y(
        n236) );
  OAI2BB2X1M U234 ( .B0(n361), .B1(n161), .A0N(\mem[6][4] ), .A1N(n161), .Y(
        n237) );
  OAI2BB2X1M U235 ( .B0(n362), .B1(n161), .A0N(\mem[6][5] ), .A1N(n161), .Y(
        n238) );
  OAI2BB2X1M U236 ( .B0(n363), .B1(n161), .A0N(\mem[6][6] ), .A1N(n161), .Y(
        n239) );
  OAI2BB2X1M U237 ( .B0(n356), .B1(n161), .A0N(\mem[6][7] ), .A1N(n161), .Y(
        n240) );
  OAI2BB2X1M U238 ( .B0(n360), .B1(n164), .A0N(\mem[7][0] ), .A1N(n164), .Y(
        n241) );
  OAI2BB2X1M U239 ( .B0(n359), .B1(n164), .A0N(\mem[7][1] ), .A1N(n164), .Y(
        n242) );
  OAI2BB2X1M U240 ( .B0(n358), .B1(n164), .A0N(\mem[7][2] ), .A1N(n164), .Y(
        n243) );
  OAI2BB2X1M U241 ( .B0(n357), .B1(n164), .A0N(\mem[7][3] ), .A1N(n164), .Y(
        n244) );
  OAI2BB2X1M U242 ( .B0(n361), .B1(n164), .A0N(\mem[7][4] ), .A1N(n164), .Y(
        n245) );
  OAI2BB2X1M U243 ( .B0(n362), .B1(n164), .A0N(\mem[7][5] ), .A1N(n164), .Y(
        n246) );
  OAI2BB2X1M U244 ( .B0(n363), .B1(n164), .A0N(\mem[7][6] ), .A1N(n164), .Y(
        n247) );
  OAI2BB2X1M U245 ( .B0(n356), .B1(n164), .A0N(\mem[7][7] ), .A1N(n164), .Y(
        n248) );
  OAI2BB2X1M U246 ( .B0(n359), .B1(n155), .A0N(REG2[1]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U247 ( .B0(n358), .B1(n155), .A0N(REG2[2]), .A1N(n155), .Y(n203)
         );
  OAI2BB2X1M U248 ( .B0(n357), .B1(n155), .A0N(REG2[3]), .A1N(n155), .Y(n204)
         );
  OAI2BB2X1M U249 ( .B0(n361), .B1(n155), .A0N(REG2[4]), .A1N(n155), .Y(n205)
         );
  OAI2BB2X1M U250 ( .B0(n362), .B1(n155), .A0N(REG2[5]), .A1N(n155), .Y(n206)
         );
  OAI2BB2X1M U251 ( .B0(n363), .B1(n155), .A0N(REG2[6]), .A1N(n155), .Y(n207)
         );
  OAI2BB2X1M U252 ( .B0(n360), .B1(n157), .A0N(REG3[0]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U253 ( .B0(n359), .B1(n157), .A0N(REG3[1]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U254 ( .B0(n358), .B1(n157), .A0N(REG3[2]), .A1N(n157), .Y(n211)
         );
  OAI2BB2X1M U255 ( .B0(n357), .B1(n157), .A0N(REG3[3]), .A1N(n157), .Y(n212)
         );
  OAI2BB2X1M U256 ( .B0(n361), .B1(n157), .A0N(REG3[4]), .A1N(n157), .Y(n213)
         );
  OAI2BB2X1M U257 ( .B0(n363), .B1(n157), .A0N(REG3[6]), .A1N(n157), .Y(n215)
         );
  OAI2BB2X1M U258 ( .B0(n356), .B1(n157), .A0N(REG3[7]), .A1N(n157), .Y(n216)
         );
  OAI2BB2X1M U259 ( .B0(n360), .B1(n166), .A0N(\mem[8][0] ), .A1N(n166), .Y(
        n249) );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n166), .A0N(\mem[8][1] ), .A1N(n166), .Y(
        n250) );
  OAI2BB2X1M U261 ( .B0(n358), .B1(n166), .A0N(\mem[8][2] ), .A1N(n166), .Y(
        n251) );
  OAI2BB2X1M U262 ( .B0(n357), .B1(n166), .A0N(\mem[8][3] ), .A1N(n166), .Y(
        n252) );
  OAI2BB2X1M U263 ( .B0(n361), .B1(n166), .A0N(\mem[8][4] ), .A1N(n166), .Y(
        n253) );
  OAI2BB2X1M U264 ( .B0(n362), .B1(n166), .A0N(\mem[8][5] ), .A1N(n166), .Y(
        n254) );
  OAI2BB2X1M U265 ( .B0(n363), .B1(n166), .A0N(\mem[8][6] ), .A1N(n166), .Y(
        n255) );
  OAI2BB2X1M U266 ( .B0(n356), .B1(n166), .A0N(\mem[8][7] ), .A1N(n166), .Y(
        n256) );
  OAI2BB2X1M U267 ( .B0(n360), .B1(n168), .A0N(\mem[9][0] ), .A1N(n168), .Y(
        n257) );
  OAI2BB2X1M U268 ( .B0(n359), .B1(n168), .A0N(\mem[9][1] ), .A1N(n168), .Y(
        n258) );
  OAI2BB2X1M U269 ( .B0(n358), .B1(n168), .A0N(\mem[9][2] ), .A1N(n168), .Y(
        n259) );
  OAI2BB2X1M U270 ( .B0(n357), .B1(n168), .A0N(\mem[9][3] ), .A1N(n168), .Y(
        n260) );
  OAI2BB2X1M U271 ( .B0(n361), .B1(n168), .A0N(\mem[9][4] ), .A1N(n168), .Y(
        n261) );
  OAI2BB2X1M U272 ( .B0(n362), .B1(n168), .A0N(\mem[9][5] ), .A1N(n168), .Y(
        n262) );
  OAI2BB2X1M U273 ( .B0(n363), .B1(n168), .A0N(\mem[9][6] ), .A1N(n168), .Y(
        n263) );
  OAI2BB2X1M U274 ( .B0(n356), .B1(n168), .A0N(\mem[9][7] ), .A1N(n168), .Y(
        n264) );
  OAI2BB2X1M U275 ( .B0(n360), .B1(n170), .A0N(\mem[10][0] ), .A1N(n170), .Y(
        n265) );
  OAI2BB2X1M U276 ( .B0(n359), .B1(n170), .A0N(\mem[10][1] ), .A1N(n170), .Y(
        n266) );
  OAI2BB2X1M U277 ( .B0(n358), .B1(n170), .A0N(\mem[10][2] ), .A1N(n170), .Y(
        n267) );
  OAI2BB2X1M U278 ( .B0(n357), .B1(n170), .A0N(\mem[10][3] ), .A1N(n170), .Y(
        n268) );
  OAI2BB2X1M U279 ( .B0(n361), .B1(n170), .A0N(\mem[10][4] ), .A1N(n170), .Y(
        n269) );
  OAI2BB2X1M U280 ( .B0(n362), .B1(n170), .A0N(\mem[10][5] ), .A1N(n170), .Y(
        n270) );
  OAI2BB2X1M U281 ( .B0(n363), .B1(n170), .A0N(\mem[10][6] ), .A1N(n170), .Y(
        n271) );
  OAI2BB2X1M U282 ( .B0(n356), .B1(n170), .A0N(\mem[10][7] ), .A1N(n170), .Y(
        n272) );
  OAI2BB2X1M U283 ( .B0(n360), .B1(n171), .A0N(\mem[11][0] ), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U284 ( .B0(n359), .B1(n171), .A0N(\mem[11][1] ), .A1N(n171), .Y(
        n274) );
  OAI2BB2X1M U285 ( .B0(n358), .B1(n171), .A0N(\mem[11][2] ), .A1N(n171), .Y(
        n275) );
  OAI2BB2X1M U286 ( .B0(n357), .B1(n171), .A0N(\mem[11][3] ), .A1N(n171), .Y(
        n276) );
  OAI2BB2X1M U287 ( .B0(n361), .B1(n171), .A0N(\mem[11][4] ), .A1N(n171), .Y(
        n277) );
  OAI2BB2X1M U288 ( .B0(n362), .B1(n171), .A0N(\mem[11][5] ), .A1N(n171), .Y(
        n278) );
  OAI2BB2X1M U289 ( .B0(n363), .B1(n171), .A0N(\mem[11][6] ), .A1N(n171), .Y(
        n279) );
  OAI2BB2X1M U290 ( .B0(n356), .B1(n171), .A0N(\mem[11][7] ), .A1N(n171), .Y(
        n280) );
  OAI2BB2X1M U291 ( .B0(n360), .B1(n172), .A0N(\mem[12][0] ), .A1N(n172), .Y(
        n281) );
  OAI2BB2X1M U292 ( .B0(n359), .B1(n172), .A0N(\mem[12][1] ), .A1N(n172), .Y(
        n282) );
  OAI2BB2X1M U293 ( .B0(n358), .B1(n172), .A0N(\mem[12][2] ), .A1N(n172), .Y(
        n283) );
  OAI2BB2X1M U294 ( .B0(n357), .B1(n172), .A0N(\mem[12][3] ), .A1N(n172), .Y(
        n284) );
  OAI2BB2X1M U295 ( .B0(n361), .B1(n172), .A0N(\mem[12][4] ), .A1N(n172), .Y(
        n285) );
  OAI2BB2X1M U296 ( .B0(n362), .B1(n172), .A0N(\mem[12][5] ), .A1N(n172), .Y(
        n286) );
  OAI2BB2X1M U297 ( .B0(n363), .B1(n172), .A0N(\mem[12][6] ), .A1N(n172), .Y(
        n287) );
  OAI2BB2X1M U298 ( .B0(n356), .B1(n172), .A0N(\mem[12][7] ), .A1N(n172), .Y(
        n288) );
  OAI2BB2X1M U299 ( .B0(n360), .B1(n173), .A0N(\mem[13][0] ), .A1N(n173), .Y(
        n289) );
  OAI2BB2X1M U300 ( .B0(n359), .B1(n173), .A0N(\mem[13][1] ), .A1N(n173), .Y(
        n290) );
  OAI2BB2X1M U301 ( .B0(n358), .B1(n173), .A0N(\mem[13][2] ), .A1N(n173), .Y(
        n291) );
  OAI2BB2X1M U302 ( .B0(n357), .B1(n173), .A0N(\mem[13][3] ), .A1N(n173), .Y(
        n292) );
  OAI2BB2X1M U303 ( .B0(n361), .B1(n173), .A0N(\mem[13][4] ), .A1N(n173), .Y(
        n293) );
  OAI2BB2X1M U304 ( .B0(n362), .B1(n173), .A0N(\mem[13][5] ), .A1N(n173), .Y(
        n294) );
  OAI2BB2X1M U305 ( .B0(n363), .B1(n173), .A0N(\mem[13][6] ), .A1N(n173), .Y(
        n295) );
  OAI2BB2X1M U306 ( .B0(n356), .B1(n173), .A0N(\mem[13][7] ), .A1N(n173), .Y(
        n296) );
  OAI2BB2X1M U307 ( .B0(n360), .B1(n174), .A0N(\mem[14][0] ), .A1N(n174), .Y(
        n297) );
  OAI2BB2X1M U308 ( .B0(n359), .B1(n174), .A0N(\mem[14][1] ), .A1N(n174), .Y(
        n298) );
  OAI2BB2X1M U309 ( .B0(n358), .B1(n174), .A0N(\mem[14][2] ), .A1N(n174), .Y(
        n299) );
  OAI2BB2X1M U310 ( .B0(n357), .B1(n174), .A0N(\mem[14][3] ), .A1N(n174), .Y(
        n300) );
  OAI2BB2X1M U311 ( .B0(n361), .B1(n174), .A0N(\mem[14][4] ), .A1N(n174), .Y(
        n301) );
  OAI2BB2X1M U312 ( .B0(n362), .B1(n174), .A0N(\mem[14][5] ), .A1N(n174), .Y(
        n302) );
  OAI2BB2X1M U313 ( .B0(n363), .B1(n174), .A0N(\mem[14][6] ), .A1N(n174), .Y(
        n303) );
  OAI2BB2X1M U314 ( .B0(n356), .B1(n174), .A0N(\mem[14][7] ), .A1N(n174), .Y(
        n304) );
  OAI2BB2X1M U315 ( .B0(n360), .B1(n176), .A0N(\mem[15][0] ), .A1N(n176), .Y(
        n305) );
  OAI2BB2X1M U316 ( .B0(n359), .B1(n176), .A0N(\mem[15][1] ), .A1N(n176), .Y(
        n306) );
  OAI2BB2X1M U317 ( .B0(n358), .B1(n176), .A0N(\mem[15][2] ), .A1N(n176), .Y(
        n307) );
  OAI2BB2X1M U318 ( .B0(n357), .B1(n176), .A0N(\mem[15][3] ), .A1N(n176), .Y(
        n308) );
  OAI2BB2X1M U319 ( .B0(n361), .B1(n176), .A0N(\mem[15][4] ), .A1N(n176), .Y(
        n309) );
  OAI2BB2X1M U320 ( .B0(n362), .B1(n176), .A0N(\mem[15][5] ), .A1N(n176), .Y(
        n310) );
  OAI2BB2X1M U321 ( .B0(n363), .B1(n176), .A0N(\mem[15][6] ), .A1N(n176), .Y(
        n311) );
  OAI2BB2X1M U322 ( .B0(n356), .B1(n176), .A0N(\mem[15][7] ), .A1N(n176), .Y(
        n312) );
  OAI2BB2X1M U323 ( .B0(n360), .B1(n155), .A0N(REG2[0]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U324 ( .B0(n356), .B1(n155), .A0N(REG2[7]), .A1N(n155), .Y(n208)
         );
  OAI2BB2X1M U325 ( .B0(n362), .B1(n157), .A0N(REG3[5]), .A1N(n157), .Y(n214)
         );
  AO22X1M U326 ( .A0(N42), .A1(n355), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U327 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U328 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N11), .S1(N12), .Y(n143) );
  MX4X1M U329 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n337), .S1(n334), .Y(n142) );
  MX4X1M U330 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n336), 
        .S1(N12), .Y(n145) );
  MX4X1M U331 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N11), .S1(n334), .Y(n140) );
  MX4X1M U332 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n336), .S1(N12), .Y(n144) );
  MX4X1M U333 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n336), .S1(N12), .Y(n148) );
  MX4X1M U334 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n336), .S1(N12), .Y(n316) );
  MX4X1M U335 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n336), .S1(N12), .Y(n320) );
  MX4X1M U336 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n337), .S1(n334), .Y(n324) );
  MX4X1M U337 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n337), .S1(n334), .Y(n328) );
  MX4X1M U338 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n337), .S1(n334), .Y(n332) );
  MX4X1M U339 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n336), .S1(n334), .Y(n138) );
  MX4X1M U340 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n336), .S1(N12), .Y(n146) );
  MX4X1M U341 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n336), .S1(N12), .Y(n314) );
  MX4X1M U342 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n336), .S1(N12), .Y(n318) );
  MX4X1M U343 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n337), .S1(n334), .Y(n322) );
  MX4X1M U344 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n337), .S1(n334), .Y(n326) );
  MX4X1M U345 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n337), .S1(n334), .Y(n330) );
  AO22X1M U346 ( .A0(N43), .A1(n355), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U347 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U348 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n141) );
  MX4X1M U349 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  AO22X1M U350 ( .A0(N41), .A1(n355), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U351 ( .A(n313), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U352 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n336), 
        .S1(N12), .Y(n313) );
  MX4X1M U353 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n336), .S1(N12), .Y(n147) );
  AO22X1M U354 ( .A0(N40), .A1(n355), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U355 ( .A(n317), .B(n315), .C(n316), .D(n314), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U356 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n336), 
        .S1(N12), .Y(n317) );
  MX4X1M U357 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n336), .S1(N12), .Y(n315) );
  AO22X1M U358 ( .A0(N39), .A1(n355), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U359 ( .A(n321), .B(n319), .C(n320), .D(n318), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U360 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n337), 
        .S1(N12), .Y(n321) );
  MX4X1M U361 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n336), .S1(N12), .Y(n319) );
  AO22X1M U362 ( .A0(N38), .A1(n355), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U363 ( .A(n325), .B(n323), .C(n324), .D(n322), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U364 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n337), 
        .S1(n334), .Y(n325) );
  MX4X1M U365 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n337), .S1(n334), .Y(n323) );
  AO22X1M U366 ( .A0(N37), .A1(n355), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U367 ( .A(n329), .B(n327), .C(n328), .D(n326), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U368 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n337), 
        .S1(n334), .Y(n329) );
  MX4X1M U369 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n337), .S1(n334), .Y(n327) );
  AO22X1M U370 ( .A0(N36), .A1(n355), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U371 ( .A(n333), .B(n331), .C(n332), .D(n330), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U372 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n337), 
        .S1(n334), .Y(n333) );
  MX4X1M U373 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n337), .S1(n334), .Y(n331) );
  DLY1X1M U374 ( .A(test_se), .Y(n368) );
  DLY1X1M U375 ( .A(test_se), .Y(n369) );
  DLY1X1M U376 ( .A(test_se), .Y(n370) );
  DLY1X1M U377 ( .A(test_se), .Y(n371) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \Sync[0] ;

  SDFFRQX2M \Sync_reg[1]  ( .D(\Sync[0] ), .SI(\Sync[0] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \Sync_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\Sync[0] ) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \Sync[0] ;

  SDFFRQX2M \Sync_reg[1]  ( .D(\Sync[0] ), .SI(\Sync[0] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \Sync_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\Sync[0] ) );
endmodule


module DATA_SYNC_test_1 ( unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   pulse_reg, n1, n3, n5, n7, n9, n11, n13, n15, n17, n23;
  wire   [1:0] Sync_en;

  SDFFRQX2M pulse_reg_reg ( .D(Sync_en[1]), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(pulse_reg) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(pulse_reg), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M enable_pulse_reg ( .D(n23), .SI(Sync_en[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \Sync_en_reg[0]  ( .D(bus_enable), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Sync_en[0]) );
  SDFFRQX1M \Sync_en_reg[1]  ( .D(Sync_en[0]), .SI(Sync_en[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Sync_en[1]) );
  INVX2M U4 ( .A(n1), .Y(n23) );
  NAND2BX2M U5 ( .AN(pulse_reg), .B(Sync_en[1]), .Y(n1) );
  AO22X1M U6 ( .A0(unsync_bus[0]), .A1(n23), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n23), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n23), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n23), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U10 ( .A0(unsync_bus[4]), .A1(n23), .B0(sync_bus[4]), .B1(n1), .Y(
        n11) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n23), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n23), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U25 ( .A0(unsync_bus[7]), .A1(n23), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module Prescale_Mux ( sel, ratio );
  input [5:0] sel;
  output [7:0] ratio;
  wire   n1, n2, n3;

  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(ratio[0]) );
  AND2X2M U14 ( .A(n2), .B(n3), .Y(ratio[1]) );
  AND2X2M U15 ( .A(n1), .B(n2), .Y(ratio[2]) );
  NOR3BX2M U16 ( .AN(sel[4]), .B(sel[3]), .C(sel[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(sel[3]), .B(sel[4]), .C(sel[5]), .Y(n1) );
  NOR3X2M U18 ( .A(sel[2]), .B(sel[1]), .C(sel[0]), .Y(n2) );
  INVX2M U3 ( .A(1'b1), .Y(ratio[3]) );
  INVX2M U5 ( .A(1'b1), .Y(ratio[4]) );
  INVX2M U7 ( .A(1'b1), .Y(ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(ratio[6]) );
  INVX2M U11 ( .A(1'b1), .Y(ratio[7]) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3XLM U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .Y(DIFF[6]) );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n3), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n2), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX2M U1 ( .A(B[0]), .Y(n8) );
  NAND2X2M U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U3 ( .A(B[1]), .Y(n7) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U5 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U6 ( .A(B[2]), .Y(n2) );
  INVX2M U7 ( .A(B[3]), .Y(n3) );
  INVX2M U8 ( .A(B[4]), .Y(n4) );
  INVX2M U9 ( .A(B[6]), .Y(n6) );
  INVX2M U10 ( .A(B[5]), .Y(n5) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, High, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, n52, N8, N7, N6, N5, N4, N3, N2,
         \sub_1_root_sub_0_root_sub_38_2/carry[6] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[5] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[4] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] CLK_togg;
  wire   [6:0] odd_CLK_togg;
  wire   [6:0] Counter;
  assign test_so = High;
  assign N2 = i_div_ratio[0];

  SDFFRQX2M \Counter_reg[6]  ( .D(N32), .SI(n32), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Counter[6]) );
  SDFFRQX2M div_clk_reg ( .D(n52), .SI(Counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(High) );
  SDFFRQX2M \Counter_reg[0]  ( .D(N26), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[0]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(N27), .SI(Counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[1]) );
  SDFFRQX2M \Counter_reg[4]  ( .D(N30), .SI(n21), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Counter[4]) );
  SDFFRQX2M \Counter_reg[3]  ( .D(N29), .SI(Counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[3]) );
  SDFFRQX2M \Counter_reg[2]  ( .D(N28), .SI(Counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[2]) );
  SDFFRQX2M \Counter_reg[5]  ( .D(N31), .SI(Counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[5]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U6 ( .A(i_div_ratio[1]), .Y(N3) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n6) );
  MX2X2M U8 ( .A(High), .B(i_ref_clk), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U12 ( .A(i_div_ratio[6]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ), .Y(N8) );
  OR2X1M U16 ( .A(i_div_ratio[5]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[5] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ) );
  XNOR2X1M U17 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .B(
        i_div_ratio[5]), .Y(N7) );
  OR2X1M U18 ( .A(i_div_ratio[4]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[5] ) );
  XNOR2X1M U19 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .B(
        i_div_ratio[4]), .Y(N6) );
  OR2X1M U20 ( .A(i_div_ratio[3]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ) );
  XNOR2X1M U21 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[3] ), .B(
        i_div_ratio[3]), .Y(N5) );
  OR2X1M U22 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ) );
  XNOR2X1M U23 ( .A(i_div_ratio[1]), .B(i_div_ratio[2]), .Y(N4) );
  OAI2BB1X1M U24 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        CLK_togg[1]) );
  OR2X1M U25 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U26 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(CLK_togg[2]) );
  NOR2X1M U27 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U28 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(CLK_togg[3]) );
  CLKNAND2X2M U29 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U30 ( .A0(n3), .A1(n6), .B0(n4), .Y(CLK_togg[4]) );
  XNOR2X1M U31 ( .A(i_div_ratio[6]), .B(n4), .Y(CLK_togg[5]) );
  NOR2X1M U32 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[7]), .B(n5), .Y(CLK_togg[6]) );
  NOR2X1M U34 ( .A(n7), .B(n8), .Y(n52) );
  MXI2X1M U35 ( .A(n9), .B(n10), .S0(High), .Y(n8) );
  NOR2BX1M U36 ( .AN(N25), .B(n11), .Y(N32) );
  NOR2BX1M U37 ( .AN(N24), .B(n11), .Y(N31) );
  NOR2BX1M U38 ( .AN(N23), .B(n11), .Y(N30) );
  NOR2BX1M U39 ( .AN(N22), .B(n11), .Y(N29) );
  NOR2BX1M U40 ( .AN(N21), .B(n11), .Y(N28) );
  NOR2BX1M U41 ( .AN(N20), .B(n11), .Y(N27) );
  NOR2BX1M U42 ( .AN(N19), .B(n11), .Y(N26) );
  OR2X1M U43 ( .A(n9), .B(n7), .Y(n11) );
  OAI21X1M U44 ( .A0(N2), .A1(n12), .B0(n10), .Y(n9) );
  CLKMX2X2M U45 ( .A(n13), .B(n12), .S0(High), .Y(n10) );
  OAI2BB1X1M U46 ( .A0N(n14), .A1N(odd_CLK_togg[6]), .B0(n15), .Y(n13) );
  OAI22X1M U47 ( .A0(n16), .A1(n17), .B0(odd_CLK_togg[6]), .B1(n14), .Y(n15)
         );
  NOR2X1M U48 ( .A(Counter[5]), .B(n18), .Y(n17) );
  AOI221XLM U49 ( .A0(Counter[4]), .A1(n19), .B0(Counter[5]), .B1(n18), .C0(
        n20), .Y(n16) );
  AOI221XLM U50 ( .A0(odd_CLK_togg[3]), .A1(n21), .B0(odd_CLK_togg[4]), .B1(
        n22), .C0(n23), .Y(n20) );
  AOI222X1M U51 ( .A0(Counter[2]), .A1(n24), .B0(n25), .B1(n26), .C0(
        Counter[3]), .C1(n27), .Y(n23) );
  CLKINVX1M U52 ( .A(odd_CLK_togg[3]), .Y(n27) );
  OAI211X1M U53 ( .A0(odd_CLK_togg[1]), .A1(n28), .B0(n29), .C0(
        odd_CLK_togg[0]), .Y(n26) );
  AOI22X1M U54 ( .A0(odd_CLK_togg[2]), .A1(n30), .B0(odd_CLK_togg[1]), .B1(n28), .Y(n25) );
  CLKINVX1M U55 ( .A(odd_CLK_togg[2]), .Y(n24) );
  CLKINVX1M U56 ( .A(odd_CLK_togg[5]), .Y(n18) );
  CLKINVX1M U57 ( .A(odd_CLK_togg[4]), .Y(n19) );
  AOI2B1X1M U58 ( .A1N(CLK_togg[6]), .A0(Counter[6]), .B0(n31), .Y(n12) );
  AOI221XLM U59 ( .A0(CLK_togg[5]), .A1(n32), .B0(CLK_togg[6]), .B1(n14), .C0(
        n33), .Y(n31) );
  AOI221XLM U60 ( .A0(Counter[4]), .A1(n42), .B0(Counter[5]), .B1(n43), .C0(
        n44), .Y(n33) );
  AOI221XLM U61 ( .A0(CLK_togg[3]), .A1(n21), .B0(CLK_togg[4]), .B1(n22), .C0(
        n45), .Y(n44) );
  AOI222X1M U62 ( .A0(Counter[2]), .A1(n46), .B0(n47), .B1(n48), .C0(
        Counter[3]), .C1(n49), .Y(n45) );
  CLKINVX1M U63 ( .A(CLK_togg[3]), .Y(n49) );
  OAI211X1M U64 ( .A0(CLK_togg[1]), .A1(n28), .B0(n29), .C0(N3), .Y(n48) );
  CLKINVX1M U65 ( .A(Counter[0]), .Y(n29) );
  AOI22X1M U66 ( .A0(CLK_togg[2]), .A1(n30), .B0(CLK_togg[1]), .B1(n28), .Y(
        n47) );
  CLKINVX1M U67 ( .A(Counter[1]), .Y(n28) );
  CLKINVX1M U68 ( .A(Counter[2]), .Y(n30) );
  CLKINVX1M U69 ( .A(CLK_togg[2]), .Y(n46) );
  CLKINVX1M U70 ( .A(Counter[4]), .Y(n22) );
  CLKINVX1M U71 ( .A(Counter[3]), .Y(n21) );
  CLKINVX1M U72 ( .A(CLK_togg[5]), .Y(n43) );
  CLKINVX1M U73 ( .A(CLK_togg[4]), .Y(n42) );
  CLKINVX1M U74 ( .A(Counter[6]), .Y(n14) );
  CLKINVX1M U75 ( .A(Counter[5]), .Y(n32) );
  NAND2BX1M U76 ( .AN(n7), .B(i_rst_n), .Y(N1) );
  OAI2BB1X1M U77 ( .A0N(n50), .A1N(n51), .B0(i_clk_en), .Y(n7) );
  NOR4X1M U78 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  NOR3X1M U79 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n50) );
  ClkDiv_0_DW01_inc_0 add_65 ( .A(Counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19}) );
  ClkDiv_0_DW01_sub_0 sub_0_root_sub_0_root_sub_38_2 ( .A({N8, N7, N6, N5, N4, 
        N3, N2}), .B({CLK_togg[6:1], N3}), .CI(1'b0), .DIFF(odd_CLK_togg) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  XOR3XLM U2_6 ( .A(A[6]), .B(n2), .C(carry[6]), .Y(DIFF[6]) );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  INVX2M U1 ( .A(B[0]), .Y(n8) );
  INVX2M U2 ( .A(B[3]), .Y(n5) );
  INVX2M U3 ( .A(B[4]), .Y(n4) );
  INVX2M U4 ( .A(B[5]), .Y(n3) );
  XNOR2X2M U5 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  NAND2X2M U6 ( .A(A[1]), .B(n1), .Y(carry[1]) );
  INVX2M U7 ( .A(B[1]), .Y(n7) );
  INVX2M U8 ( .A(B[2]), .Y(n6) );
  INVX2M U9 ( .A(B[6]), .Y(n2) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, High, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N8, N7, N6, N5, N4, N3, N2,
         \sub_1_root_sub_0_root_sub_38_2/carry[6] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[5] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[4] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n54;
  wire   [6:0] CLK_togg;
  wire   [6:0] odd_CLK_togg;
  wire   [6:0] Counter;
  assign test_so = High;
  assign N2 = i_div_ratio[0];

  SDFFRQX2M \Counter_reg[6]  ( .D(N32), .SI(n32), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Counter[6]) );
  SDFFRQX2M div_clk_reg ( .D(n54), .SI(Counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(High) );
  SDFFRQX2M \Counter_reg[0]  ( .D(N26), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[0]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(N27), .SI(Counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[1]) );
  SDFFRQX2M \Counter_reg[4]  ( .D(N30), .SI(n21), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Counter[4]) );
  SDFFRQX2M \Counter_reg[3]  ( .D(N29), .SI(Counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[3]) );
  SDFFRQX2M \Counter_reg[2]  ( .D(N28), .SI(Counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[2]) );
  SDFFRQX2M \Counter_reg[5]  ( .D(N31), .SI(Counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Counter[5]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U6 ( .A(i_div_ratio[1]), .Y(N3) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n6) );
  MX2X2M U8 ( .A(High), .B(i_ref_clk), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U12 ( .A(i_div_ratio[6]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ), .Y(N8) );
  OR2X1M U16 ( .A(i_div_ratio[5]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[5] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ) );
  XNOR2X1M U17 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .B(
        i_div_ratio[5]), .Y(N7) );
  OR2X1M U18 ( .A(i_div_ratio[4]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[5] ) );
  XNOR2X1M U19 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .B(
        i_div_ratio[4]), .Y(N6) );
  OR2X1M U20 ( .A(i_div_ratio[3]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ) );
  XNOR2X1M U21 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[3] ), .B(
        i_div_ratio[3]), .Y(N5) );
  OR2X1M U22 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ) );
  XNOR2X1M U23 ( .A(i_div_ratio[1]), .B(i_div_ratio[2]), .Y(N4) );
  OAI2BB1X1M U24 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        CLK_togg[1]) );
  OR2X1M U25 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U26 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(CLK_togg[2]) );
  NOR2X1M U27 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U28 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(CLK_togg[3]) );
  CLKNAND2X2M U29 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U30 ( .A0(n3), .A1(n6), .B0(n4), .Y(CLK_togg[4]) );
  XNOR2X1M U31 ( .A(i_div_ratio[6]), .B(n4), .Y(CLK_togg[5]) );
  NOR2X1M U32 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[7]), .B(n5), .Y(CLK_togg[6]) );
  NOR2X1M U34 ( .A(n7), .B(n8), .Y(n54) );
  MXI2X1M U35 ( .A(n9), .B(n10), .S0(High), .Y(n8) );
  NOR2BX1M U36 ( .AN(N25), .B(n11), .Y(N32) );
  NOR2BX1M U37 ( .AN(N24), .B(n11), .Y(N31) );
  NOR2BX1M U38 ( .AN(N23), .B(n11), .Y(N30) );
  NOR2BX1M U39 ( .AN(N22), .B(n11), .Y(N29) );
  NOR2BX1M U40 ( .AN(N21), .B(n11), .Y(N28) );
  NOR2BX1M U41 ( .AN(N20), .B(n11), .Y(N27) );
  NOR2BX1M U42 ( .AN(N19), .B(n11), .Y(N26) );
  OR2X1M U43 ( .A(n9), .B(n7), .Y(n11) );
  OAI21X1M U44 ( .A0(N2), .A1(n12), .B0(n10), .Y(n9) );
  CLKMX2X2M U45 ( .A(n13), .B(n12), .S0(High), .Y(n10) );
  OAI2BB1X1M U46 ( .A0N(n14), .A1N(odd_CLK_togg[6]), .B0(n15), .Y(n13) );
  OAI22X1M U47 ( .A0(n16), .A1(n17), .B0(odd_CLK_togg[6]), .B1(n14), .Y(n15)
         );
  NOR2X1M U48 ( .A(Counter[5]), .B(n18), .Y(n17) );
  AOI221XLM U49 ( .A0(Counter[4]), .A1(n19), .B0(Counter[5]), .B1(n18), .C0(
        n20), .Y(n16) );
  AOI221XLM U50 ( .A0(odd_CLK_togg[3]), .A1(n21), .B0(odd_CLK_togg[4]), .B1(
        n22), .C0(n23), .Y(n20) );
  AOI222X1M U51 ( .A0(Counter[2]), .A1(n24), .B0(n25), .B1(n26), .C0(
        Counter[3]), .C1(n27), .Y(n23) );
  CLKINVX1M U52 ( .A(odd_CLK_togg[3]), .Y(n27) );
  OAI211X1M U53 ( .A0(odd_CLK_togg[1]), .A1(n28), .B0(n29), .C0(
        odd_CLK_togg[0]), .Y(n26) );
  AOI22X1M U54 ( .A0(odd_CLK_togg[2]), .A1(n30), .B0(odd_CLK_togg[1]), .B1(n28), .Y(n25) );
  CLKINVX1M U55 ( .A(odd_CLK_togg[2]), .Y(n24) );
  CLKINVX1M U56 ( .A(odd_CLK_togg[5]), .Y(n18) );
  CLKINVX1M U57 ( .A(odd_CLK_togg[4]), .Y(n19) );
  AOI2B1X1M U58 ( .A1N(CLK_togg[6]), .A0(Counter[6]), .B0(n31), .Y(n12) );
  AOI221XLM U59 ( .A0(CLK_togg[5]), .A1(n32), .B0(CLK_togg[6]), .B1(n14), .C0(
        n33), .Y(n31) );
  AOI221XLM U60 ( .A0(Counter[4]), .A1(n42), .B0(Counter[5]), .B1(n43), .C0(
        n44), .Y(n33) );
  AOI221XLM U61 ( .A0(CLK_togg[3]), .A1(n21), .B0(CLK_togg[4]), .B1(n22), .C0(
        n45), .Y(n44) );
  AOI222X1M U62 ( .A0(Counter[2]), .A1(n46), .B0(n47), .B1(n48), .C0(
        Counter[3]), .C1(n49), .Y(n45) );
  CLKINVX1M U63 ( .A(CLK_togg[3]), .Y(n49) );
  OAI211X1M U64 ( .A0(CLK_togg[1]), .A1(n28), .B0(n29), .C0(N3), .Y(n48) );
  CLKINVX1M U65 ( .A(Counter[0]), .Y(n29) );
  AOI22X1M U66 ( .A0(CLK_togg[2]), .A1(n30), .B0(CLK_togg[1]), .B1(n28), .Y(
        n47) );
  CLKINVX1M U67 ( .A(Counter[1]), .Y(n28) );
  CLKINVX1M U68 ( .A(Counter[2]), .Y(n30) );
  CLKINVX1M U69 ( .A(CLK_togg[2]), .Y(n46) );
  CLKINVX1M U70 ( .A(Counter[4]), .Y(n22) );
  CLKINVX1M U71 ( .A(Counter[3]), .Y(n21) );
  CLKINVX1M U72 ( .A(CLK_togg[5]), .Y(n43) );
  CLKINVX1M U73 ( .A(CLK_togg[4]), .Y(n42) );
  CLKINVX1M U74 ( .A(Counter[6]), .Y(n14) );
  CLKINVX1M U75 ( .A(Counter[5]), .Y(n32) );
  NAND2BX1M U76 ( .AN(n7), .B(i_rst_n), .Y(N1) );
  OAI2BB1X1M U77 ( .A0N(n50), .A1N(n51), .B0(i_clk_en), .Y(n7) );
  NOR4X1M U78 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  NOR3X1M U79 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n50) );
  ClkDiv_1_DW01_inc_0 add_65 ( .A(Counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19}) );
  ClkDiv_1_DW01_sub_0 sub_0_root_sub_0_root_sub_38_2 ( .A({N8, N7, N6, N5, N4, 
        N3, N2}), .B({CLK_togg[6:1], N3}), .CI(1'b0), .DIFF(odd_CLK_togg) );
endmodule


module FIFO_Memory_BUS_WIDTH8_ADDR_WIDTH3_DEPTH8_test_1 ( W_data, W_addr, 
        R_addr, W_inc, W_full, W_CLK, W_RST, R_data, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] W_data;
  input [2:0] W_addr;
  input [2:0] R_addr;
  output [7:0] R_data;
  input W_inc, W_full, W_CLK, W_RST, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N9, N10, N11, \MEM[7][7] , \MEM[7][6] , \MEM[7][5] , \MEM[7][4] ,
         \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , \MEM[6][7] ,
         \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] , \MEM[6][2] ,
         \MEM[6][1] , \MEM[6][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] ,
         \MEM[5][4] , \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] ,
         \MEM[4][7] , \MEM[4][6] , \MEM[4][5] , \MEM[4][4] , \MEM[4][3] ,
         \MEM[4][2] , \MEM[4][1] , \MEM[4][0] , \MEM[3][7] , \MEM[3][6] ,
         \MEM[3][5] , \MEM[3][4] , \MEM[3][3] , \MEM[3][2] , \MEM[3][1] ,
         \MEM[3][0] , \MEM[2][7] , \MEM[2][6] , \MEM[2][5] , \MEM[2][4] ,
         \MEM[2][3] , \MEM[2][2] , \MEM[2][1] , \MEM[2][0] , \MEM[1][7] ,
         \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] , \MEM[1][2] ,
         \MEM[1][1] , \MEM[1][0] , \MEM[0][7] , \MEM[0][6] , \MEM[0][5] ,
         \MEM[0][4] , \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n182, n183, n184, n185,
         n186;
  assign N9 = R_addr[0];
  assign N10 = R_addr[1];
  assign N11 = R_addr[2];
  assign test_so2 = \MEM[7][7] ;
  assign test_so1 = \MEM[6][1] ;

  SDFFRQX2M \MEM_reg[5][3]  ( .D(n129), .SI(\MEM[5][2] ), .SE(n186), .CK(W_CLK), .RN(n164), .Q(\MEM[5][3] ) );
  SDFFRQX2M \MEM_reg[5][2]  ( .D(n128), .SI(\MEM[5][1] ), .SE(n185), .CK(W_CLK), .RN(n164), .Q(\MEM[5][2] ) );
  SDFFRQX2M \MEM_reg[5][1]  ( .D(n127), .SI(\MEM[5][0] ), .SE(n184), .CK(W_CLK), .RN(n164), .Q(\MEM[5][1] ) );
  SDFFRQX2M \MEM_reg[5][0]  ( .D(n126), .SI(\MEM[4][7] ), .SE(n183), .CK(W_CLK), .RN(n164), .Q(\MEM[5][0] ) );
  SDFFRQX2M \MEM_reg[1][3]  ( .D(n97), .SI(\MEM[1][2] ), .SE(n186), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][3] ) );
  SDFFRQX2M \MEM_reg[1][2]  ( .D(n96), .SI(\MEM[1][1] ), .SE(n185), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][2] ) );
  SDFFRQX2M \MEM_reg[1][1]  ( .D(n95), .SI(\MEM[1][0] ), .SE(n184), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][1] ) );
  SDFFRQX2M \MEM_reg[1][0]  ( .D(n94), .SI(\MEM[0][7] ), .SE(n183), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][0] ) );
  SDFFRQX2M \MEM_reg[7][3]  ( .D(n145), .SI(\MEM[7][2] ), .SE(n186), .CK(W_CLK), .RN(n163), .Q(\MEM[7][3] ) );
  SDFFRQX2M \MEM_reg[7][2]  ( .D(n144), .SI(\MEM[7][1] ), .SE(n185), .CK(W_CLK), .RN(n163), .Q(\MEM[7][2] ) );
  SDFFRQX2M \MEM_reg[7][1]  ( .D(n143), .SI(\MEM[7][0] ), .SE(n184), .CK(W_CLK), .RN(n163), .Q(\MEM[7][1] ) );
  SDFFRQX2M \MEM_reg[7][0]  ( .D(n142), .SI(\MEM[6][7] ), .SE(n183), .CK(W_CLK), .RN(n163), .Q(\MEM[7][0] ) );
  SDFFRQX2M \MEM_reg[3][3]  ( .D(n113), .SI(\MEM[3][2] ), .SE(n186), .CK(W_CLK), .RN(n166), .Q(\MEM[3][3] ) );
  SDFFRQX2M \MEM_reg[3][2]  ( .D(n112), .SI(\MEM[3][1] ), .SE(n185), .CK(W_CLK), .RN(n166), .Q(\MEM[3][2] ) );
  SDFFRQX2M \MEM_reg[3][1]  ( .D(n111), .SI(\MEM[3][0] ), .SE(n184), .CK(W_CLK), .RN(n166), .Q(\MEM[3][1] ) );
  SDFFRQX2M \MEM_reg[3][0]  ( .D(n110), .SI(\MEM[2][7] ), .SE(n183), .CK(W_CLK), .RN(n166), .Q(\MEM[3][0] ) );
  SDFFRQX2M \MEM_reg[6][3]  ( .D(n137), .SI(\MEM[6][2] ), .SE(n186), .CK(W_CLK), .RN(n164), .Q(\MEM[6][3] ) );
  SDFFRQX2M \MEM_reg[6][2]  ( .D(n136), .SI(test_si2), .SE(n185), .CK(W_CLK), 
        .RN(n164), .Q(\MEM[6][2] ) );
  SDFFRQX2M \MEM_reg[6][1]  ( .D(n135), .SI(\MEM[6][0] ), .SE(n184), .CK(W_CLK), .RN(n164), .Q(\MEM[6][1] ) );
  SDFFRQX2M \MEM_reg[6][0]  ( .D(n134), .SI(\MEM[5][7] ), .SE(n183), .CK(W_CLK), .RN(n164), .Q(\MEM[6][0] ) );
  SDFFRQX2M \MEM_reg[2][3]  ( .D(n105), .SI(\MEM[2][2] ), .SE(n186), .CK(W_CLK), .RN(n166), .Q(\MEM[2][3] ) );
  SDFFRQX2M \MEM_reg[2][2]  ( .D(n104), .SI(\MEM[2][1] ), .SE(n185), .CK(W_CLK), .RN(n166), .Q(\MEM[2][2] ) );
  SDFFRQX2M \MEM_reg[2][1]  ( .D(n103), .SI(\MEM[2][0] ), .SE(n184), .CK(W_CLK), .RN(n166), .Q(\MEM[2][1] ) );
  SDFFRQX2M \MEM_reg[2][0]  ( .D(n102), .SI(\MEM[1][7] ), .SE(n183), .CK(W_CLK), .RN(n166), .Q(\MEM[2][0] ) );
  SDFFRQX2M \MEM_reg[4][3]  ( .D(n121), .SI(\MEM[4][2] ), .SE(n186), .CK(W_CLK), .RN(n165), .Q(\MEM[4][3] ) );
  SDFFRQX2M \MEM_reg[4][2]  ( .D(n120), .SI(\MEM[4][1] ), .SE(n185), .CK(W_CLK), .RN(n165), .Q(\MEM[4][2] ) );
  SDFFRQX2M \MEM_reg[4][1]  ( .D(n119), .SI(\MEM[4][0] ), .SE(n184), .CK(W_CLK), .RN(n165), .Q(\MEM[4][1] ) );
  SDFFRQX2M \MEM_reg[4][0]  ( .D(n118), .SI(\MEM[3][7] ), .SE(n183), .CK(W_CLK), .RN(n165), .Q(\MEM[4][0] ) );
  SDFFRQX2M \MEM_reg[0][3]  ( .D(n89), .SI(\MEM[0][2] ), .SE(n186), .CK(W_CLK), 
        .RN(n168), .Q(\MEM[0][3] ) );
  SDFFRQX2M \MEM_reg[0][2]  ( .D(n88), .SI(\MEM[0][1] ), .SE(n185), .CK(W_CLK), 
        .RN(n168), .Q(\MEM[0][2] ) );
  SDFFRQX2M \MEM_reg[0][1]  ( .D(n87), .SI(\MEM[0][0] ), .SE(n184), .CK(W_CLK), 
        .RN(n168), .Q(\MEM[0][1] ) );
  SDFFRQX2M \MEM_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(n183), .CK(W_CLK), 
        .RN(n168), .Q(\MEM[0][0] ) );
  SDFFRQX2M \MEM_reg[5][7]  ( .D(n133), .SI(\MEM[5][6] ), .SE(n186), .CK(W_CLK), .RN(n164), .Q(\MEM[5][7] ) );
  SDFFRQX2M \MEM_reg[5][6]  ( .D(n132), .SI(\MEM[5][5] ), .SE(n185), .CK(W_CLK), .RN(n164), .Q(\MEM[5][6] ) );
  SDFFRQX2M \MEM_reg[5][5]  ( .D(n131), .SI(\MEM[5][4] ), .SE(n184), .CK(W_CLK), .RN(n164), .Q(\MEM[5][5] ) );
  SDFFRQX2M \MEM_reg[5][4]  ( .D(n130), .SI(\MEM[5][3] ), .SE(n183), .CK(W_CLK), .RN(n164), .Q(\MEM[5][4] ) );
  SDFFRQX2M \MEM_reg[1][7]  ( .D(n101), .SI(\MEM[1][6] ), .SE(n186), .CK(W_CLK), .RN(n167), .Q(\MEM[1][7] ) );
  SDFFRQX2M \MEM_reg[1][6]  ( .D(n100), .SI(\MEM[1][5] ), .SE(n185), .CK(W_CLK), .RN(n167), .Q(\MEM[1][6] ) );
  SDFFRQX2M \MEM_reg[1][5]  ( .D(n99), .SI(\MEM[1][4] ), .SE(n184), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][5] ) );
  SDFFRQX2M \MEM_reg[1][4]  ( .D(n98), .SI(\MEM[1][3] ), .SE(n183), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[1][4] ) );
  SDFFRQX2M \MEM_reg[7][7]  ( .D(n149), .SI(\MEM[7][6] ), .SE(n186), .CK(W_CLK), .RN(n163), .Q(\MEM[7][7] ) );
  SDFFRQX2M \MEM_reg[7][6]  ( .D(n148), .SI(\MEM[7][5] ), .SE(n185), .CK(W_CLK), .RN(n163), .Q(\MEM[7][6] ) );
  SDFFRQX2M \MEM_reg[7][5]  ( .D(n147), .SI(\MEM[7][4] ), .SE(n184), .CK(W_CLK), .RN(n163), .Q(\MEM[7][5] ) );
  SDFFRQX2M \MEM_reg[7][4]  ( .D(n146), .SI(\MEM[7][3] ), .SE(n183), .CK(W_CLK), .RN(n163), .Q(\MEM[7][4] ) );
  SDFFRQX2M \MEM_reg[3][7]  ( .D(n117), .SI(\MEM[3][6] ), .SE(n186), .CK(W_CLK), .RN(n165), .Q(\MEM[3][7] ) );
  SDFFRQX2M \MEM_reg[3][6]  ( .D(n116), .SI(\MEM[3][5] ), .SE(n185), .CK(W_CLK), .RN(n165), .Q(\MEM[3][6] ) );
  SDFFRQX2M \MEM_reg[3][5]  ( .D(n115), .SI(\MEM[3][4] ), .SE(n184), .CK(W_CLK), .RN(n165), .Q(\MEM[3][5] ) );
  SDFFRQX2M \MEM_reg[3][4]  ( .D(n114), .SI(\MEM[3][3] ), .SE(n183), .CK(W_CLK), .RN(n165), .Q(\MEM[3][4] ) );
  SDFFRQX2M \MEM_reg[6][7]  ( .D(n141), .SI(\MEM[6][6] ), .SE(n186), .CK(W_CLK), .RN(n163), .Q(\MEM[6][7] ) );
  SDFFRQX2M \MEM_reg[6][6]  ( .D(n140), .SI(\MEM[6][5] ), .SE(n185), .CK(W_CLK), .RN(n163), .Q(\MEM[6][6] ) );
  SDFFRQX2M \MEM_reg[6][5]  ( .D(n139), .SI(\MEM[6][4] ), .SE(n184), .CK(W_CLK), .RN(n163), .Q(\MEM[6][5] ) );
  SDFFRQX2M \MEM_reg[6][4]  ( .D(n138), .SI(\MEM[6][3] ), .SE(n183), .CK(W_CLK), .RN(n163), .Q(\MEM[6][4] ) );
  SDFFRQX2M \MEM_reg[2][7]  ( .D(n109), .SI(\MEM[2][6] ), .SE(n186), .CK(W_CLK), .RN(n166), .Q(\MEM[2][7] ) );
  SDFFRQX2M \MEM_reg[2][6]  ( .D(n108), .SI(\MEM[2][5] ), .SE(n185), .CK(W_CLK), .RN(n166), .Q(\MEM[2][6] ) );
  SDFFRQX2M \MEM_reg[2][5]  ( .D(n107), .SI(\MEM[2][4] ), .SE(n184), .CK(W_CLK), .RN(n166), .Q(\MEM[2][5] ) );
  SDFFRQX2M \MEM_reg[2][4]  ( .D(n106), .SI(\MEM[2][3] ), .SE(n183), .CK(W_CLK), .RN(n166), .Q(\MEM[2][4] ) );
  SDFFRQX2M \MEM_reg[4][7]  ( .D(n125), .SI(\MEM[4][6] ), .SE(n186), .CK(W_CLK), .RN(n165), .Q(\MEM[4][7] ) );
  SDFFRQX2M \MEM_reg[4][6]  ( .D(n124), .SI(\MEM[4][5] ), .SE(n185), .CK(W_CLK), .RN(n165), .Q(\MEM[4][6] ) );
  SDFFRQX2M \MEM_reg[4][5]  ( .D(n123), .SI(\MEM[4][4] ), .SE(n184), .CK(W_CLK), .RN(n165), .Q(\MEM[4][5] ) );
  SDFFRQX2M \MEM_reg[4][4]  ( .D(n122), .SI(\MEM[4][3] ), .SE(n183), .CK(W_CLK), .RN(n165), .Q(\MEM[4][4] ) );
  SDFFRQX2M \MEM_reg[0][7]  ( .D(n93), .SI(\MEM[0][6] ), .SE(n186), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[0][7] ) );
  SDFFRQX2M \MEM_reg[0][6]  ( .D(n92), .SI(\MEM[0][5] ), .SE(n185), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[0][6] ) );
  SDFFRQX2M \MEM_reg[0][5]  ( .D(n91), .SI(\MEM[0][4] ), .SE(n184), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[0][5] ) );
  SDFFRQX2M \MEM_reg[0][4]  ( .D(n90), .SI(\MEM[0][3] ), .SE(n183), .CK(W_CLK), 
        .RN(n167), .Q(\MEM[0][4] ) );
  NOR2BX2M U66 ( .AN(n80), .B(W_addr[2]), .Y(n76) );
  BUFX2M U67 ( .A(n83), .Y(n160) );
  BUFX2M U68 ( .A(n84), .Y(n159) );
  BUFX2M U69 ( .A(n85), .Y(n158) );
  BUFX2M U70 ( .A(n162), .Y(n167) );
  BUFX2M U71 ( .A(n162), .Y(n166) );
  BUFX2M U72 ( .A(n161), .Y(n165) );
  BUFX2M U73 ( .A(n161), .Y(n164) );
  BUFX2M U74 ( .A(n161), .Y(n163) );
  BUFX2M U75 ( .A(n162), .Y(n168) );
  BUFX2M U76 ( .A(W_RST), .Y(n162) );
  BUFX2M U77 ( .A(W_RST), .Y(n161) );
  NAND3X2M U78 ( .A(n169), .B(n178), .C(n82), .Y(n81) );
  NAND3X2M U79 ( .A(n169), .B(n178), .C(n76), .Y(n75) );
  NAND3X2M U80 ( .A(n76), .B(n169), .C(W_addr[1]), .Y(n78) );
  NAND3X2M U81 ( .A(W_addr[0]), .B(n76), .C(W_addr[1]), .Y(n79) );
  NAND3X2M U82 ( .A(n76), .B(n178), .C(W_addr[0]), .Y(n77) );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n170), .A0N(\MEM[0][0] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n171), .A0N(\MEM[0][1] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n172), .A0N(\MEM[0][2] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n173), .A0N(\MEM[0][3] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n174), .A0N(\MEM[0][4] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n175), .A0N(\MEM[0][5] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n176), .A0N(\MEM[0][6] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n177), .A0N(\MEM[0][7] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U91 ( .B0(n170), .B1(n78), .A0N(\MEM[2][0] ), .A1N(n78), .Y(n102)
         );
  OAI2BB2X1M U92 ( .B0(n171), .B1(n78), .A0N(\MEM[2][1] ), .A1N(n78), .Y(n103)
         );
  OAI2BB2X1M U93 ( .B0(n172), .B1(n78), .A0N(\MEM[2][2] ), .A1N(n78), .Y(n104)
         );
  OAI2BB2X1M U94 ( .B0(n173), .B1(n78), .A0N(\MEM[2][3] ), .A1N(n78), .Y(n105)
         );
  OAI2BB2X1M U95 ( .B0(n174), .B1(n78), .A0N(\MEM[2][4] ), .A1N(n78), .Y(n106)
         );
  OAI2BB2X1M U96 ( .B0(n175), .B1(n78), .A0N(\MEM[2][5] ), .A1N(n78), .Y(n107)
         );
  OAI2BB2X1M U97 ( .B0(n176), .B1(n78), .A0N(\MEM[2][6] ), .A1N(n78), .Y(n108)
         );
  OAI2BB2X1M U98 ( .B0(n177), .B1(n78), .A0N(\MEM[2][7] ), .A1N(n78), .Y(n109)
         );
  OAI2BB2X1M U99 ( .B0(n170), .B1(n79), .A0N(\MEM[3][0] ), .A1N(n79), .Y(n110)
         );
  OAI2BB2X1M U100 ( .B0(n171), .B1(n79), .A0N(\MEM[3][1] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U101 ( .B0(n172), .B1(n79), .A0N(\MEM[3][2] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U102 ( .B0(n173), .B1(n79), .A0N(\MEM[3][3] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U103 ( .B0(n174), .B1(n79), .A0N(\MEM[3][4] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U104 ( .B0(n175), .B1(n79), .A0N(\MEM[3][5] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U105 ( .B0(n176), .B1(n79), .A0N(\MEM[3][6] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U106 ( .B0(n177), .B1(n79), .A0N(\MEM[3][7] ), .A1N(n79), .Y(n117) );
  OAI2BB2X1M U107 ( .B0(n170), .B1(n77), .A0N(\MEM[1][0] ), .A1N(n77), .Y(n94)
         );
  OAI2BB2X1M U108 ( .B0(n171), .B1(n77), .A0N(\MEM[1][1] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U109 ( .B0(n172), .B1(n77), .A0N(\MEM[1][2] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U110 ( .B0(n173), .B1(n77), .A0N(\MEM[1][3] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U111 ( .B0(n174), .B1(n77), .A0N(\MEM[1][4] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U112 ( .B0(n175), .B1(n77), .A0N(\MEM[1][5] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U113 ( .B0(n176), .B1(n77), .A0N(\MEM[1][6] ), .A1N(n77), .Y(n100) );
  OAI2BB2X1M U114 ( .B0(n177), .B1(n77), .A0N(\MEM[1][7] ), .A1N(n77), .Y(n101) );
  OAI2BB2X1M U115 ( .B0(n170), .B1(n81), .A0N(\MEM[4][0] ), .A1N(n81), .Y(n118) );
  OAI2BB2X1M U116 ( .B0(n171), .B1(n81), .A0N(\MEM[4][1] ), .A1N(n81), .Y(n119) );
  OAI2BB2X1M U117 ( .B0(n172), .B1(n81), .A0N(\MEM[4][2] ), .A1N(n81), .Y(n120) );
  OAI2BB2X1M U118 ( .B0(n173), .B1(n81), .A0N(\MEM[4][3] ), .A1N(n81), .Y(n121) );
  OAI2BB2X1M U119 ( .B0(n174), .B1(n81), .A0N(\MEM[4][4] ), .A1N(n81), .Y(n122) );
  OAI2BB2X1M U120 ( .B0(n175), .B1(n81), .A0N(\MEM[4][5] ), .A1N(n81), .Y(n123) );
  OAI2BB2X1M U121 ( .B0(n176), .B1(n81), .A0N(\MEM[4][6] ), .A1N(n81), .Y(n124) );
  OAI2BB2X1M U122 ( .B0(n177), .B1(n81), .A0N(\MEM[4][7] ), .A1N(n81), .Y(n125) );
  OAI2BB2X1M U123 ( .B0(n170), .B1(n160), .A0N(\MEM[5][0] ), .A1N(n160), .Y(
        n126) );
  OAI2BB2X1M U124 ( .B0(n171), .B1(n160), .A0N(\MEM[5][1] ), .A1N(n160), .Y(
        n127) );
  OAI2BB2X1M U125 ( .B0(n172), .B1(n160), .A0N(\MEM[5][2] ), .A1N(n160), .Y(
        n128) );
  OAI2BB2X1M U126 ( .B0(n173), .B1(n160), .A0N(\MEM[5][3] ), .A1N(n160), .Y(
        n129) );
  OAI2BB2X1M U127 ( .B0(n174), .B1(n160), .A0N(\MEM[5][4] ), .A1N(n160), .Y(
        n130) );
  OAI2BB2X1M U128 ( .B0(n175), .B1(n160), .A0N(\MEM[5][5] ), .A1N(n160), .Y(
        n131) );
  OAI2BB2X1M U129 ( .B0(n176), .B1(n160), .A0N(\MEM[5][6] ), .A1N(n160), .Y(
        n132) );
  OAI2BB2X1M U130 ( .B0(n177), .B1(n160), .A0N(\MEM[5][7] ), .A1N(n160), .Y(
        n133) );
  OAI2BB2X1M U131 ( .B0(n170), .B1(n159), .A0N(\MEM[6][0] ), .A1N(n159), .Y(
        n134) );
  OAI2BB2X1M U132 ( .B0(n171), .B1(n159), .A0N(\MEM[6][1] ), .A1N(n159), .Y(
        n135) );
  OAI2BB2X1M U133 ( .B0(n172), .B1(n159), .A0N(\MEM[6][2] ), .A1N(n159), .Y(
        n136) );
  OAI2BB2X1M U134 ( .B0(n173), .B1(n159), .A0N(\MEM[6][3] ), .A1N(n159), .Y(
        n137) );
  OAI2BB2X1M U135 ( .B0(n174), .B1(n159), .A0N(\MEM[6][4] ), .A1N(n159), .Y(
        n138) );
  OAI2BB2X1M U136 ( .B0(n175), .B1(n159), .A0N(\MEM[6][5] ), .A1N(n159), .Y(
        n139) );
  OAI2BB2X1M U137 ( .B0(n176), .B1(n159), .A0N(\MEM[6][6] ), .A1N(n159), .Y(
        n140) );
  OAI2BB2X1M U138 ( .B0(n177), .B1(n159), .A0N(\MEM[6][7] ), .A1N(n159), .Y(
        n141) );
  OAI2BB2X1M U139 ( .B0(n170), .B1(n158), .A0N(\MEM[7][0] ), .A1N(n158), .Y(
        n142) );
  OAI2BB2X1M U140 ( .B0(n171), .B1(n158), .A0N(\MEM[7][1] ), .A1N(n158), .Y(
        n143) );
  OAI2BB2X1M U141 ( .B0(n172), .B1(n158), .A0N(\MEM[7][2] ), .A1N(n158), .Y(
        n144) );
  OAI2BB2X1M U142 ( .B0(n173), .B1(n158), .A0N(\MEM[7][3] ), .A1N(n158), .Y(
        n145) );
  OAI2BB2X1M U143 ( .B0(n174), .B1(n158), .A0N(\MEM[7][4] ), .A1N(n158), .Y(
        n146) );
  OAI2BB2X1M U144 ( .B0(n175), .B1(n158), .A0N(\MEM[7][5] ), .A1N(n158), .Y(
        n147) );
  OAI2BB2X1M U145 ( .B0(n176), .B1(n158), .A0N(\MEM[7][6] ), .A1N(n158), .Y(
        n148) );
  OAI2BB2X1M U146 ( .B0(n177), .B1(n158), .A0N(\MEM[7][7] ), .A1N(n158), .Y(
        n149) );
  NOR2BX2M U147 ( .AN(W_inc), .B(W_full), .Y(n80) );
  AND2X2M U148 ( .A(W_addr[2]), .B(n80), .Y(n82) );
  MX2X2M U149 ( .A(n153), .B(n152), .S0(N11), .Y(R_data[6]) );
  MX4X1M U150 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n157), .S1(N10), .Y(n153) );
  MX4X1M U151 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n156), .S1(N10), .Y(n152) );
  NAND3X2M U152 ( .A(W_addr[0]), .B(n178), .C(n82), .Y(n83) );
  NAND3X2M U153 ( .A(W_addr[1]), .B(n169), .C(n82), .Y(n84) );
  NAND3X2M U154 ( .A(W_addr[1]), .B(W_addr[0]), .C(n82), .Y(n85) );
  MX2X2M U155 ( .A(n155), .B(n154), .S0(N11), .Y(R_data[7]) );
  MX4X1M U156 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n157), .S1(N10), .Y(n155) );
  MX4X1M U157 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n156), .S1(N10), .Y(n154) );
  MX2X2M U158 ( .A(n70), .B(n69), .S0(N11), .Y(R_data[2]) );
  MX4X1M U159 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n157), .S1(N10), .Y(n70) );
  MX4X1M U160 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n156), .S1(N10), .Y(n69) );
  MX2X2M U161 ( .A(n72), .B(n71), .S0(N11), .Y(R_data[3]) );
  MX4X1M U162 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n157), .S1(N10), .Y(n72) );
  MX4X1M U163 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n156), .S1(N10), .Y(n71) );
  MX2X2M U164 ( .A(n151), .B(n150), .S0(N11), .Y(R_data[5]) );
  MX4X1M U165 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n157), .S1(N10), .Y(n151) );
  MX4X1M U166 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n156), .S1(N10), .Y(n150) );
  MX2X2M U167 ( .A(n68), .B(n67), .S0(N11), .Y(R_data[1]) );
  MX4X1M U168 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n157), .S1(N10), .Y(n68) );
  MX4X1M U169 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n156), .S1(N10), .Y(n67) );
  MX2X2M U170 ( .A(n74), .B(n73), .S0(N11), .Y(R_data[4]) );
  MX4X1M U171 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n157), .S1(N10), .Y(n74) );
  MX4X1M U172 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n156), .S1(N10), .Y(n73) );
  MX2X2M U173 ( .A(n66), .B(n65), .S0(N11), .Y(R_data[0]) );
  MX4X1M U174 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n157), .S1(N10), .Y(n66) );
  MX4X1M U175 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n156), .S1(N10), .Y(n65) );
  BUFX2M U176 ( .A(N9), .Y(n156) );
  BUFX2M U177 ( .A(N9), .Y(n157) );
  INVX2M U178 ( .A(W_addr[1]), .Y(n178) );
  INVX2M U179 ( .A(W_addr[0]), .Y(n169) );
  INVX2M U180 ( .A(W_data[0]), .Y(n170) );
  INVX2M U181 ( .A(W_data[1]), .Y(n171) );
  INVX2M U182 ( .A(W_data[2]), .Y(n172) );
  INVX2M U183 ( .A(W_data[3]), .Y(n173) );
  INVX2M U184 ( .A(W_data[4]), .Y(n174) );
  INVX2M U185 ( .A(W_data[5]), .Y(n175) );
  INVX2M U186 ( .A(W_data[6]), .Y(n176) );
  INVX2M U187 ( .A(W_data[7]), .Y(n177) );
  INVXLM U188 ( .A(test_se), .Y(n182) );
  INVXLM U189 ( .A(n182), .Y(n183) );
  INVXLM U190 ( .A(n182), .Y(n184) );
  INVXLM U191 ( .A(n182), .Y(n185) );
  INVXLM U192 ( .A(n182), .Y(n186) );
endmodule


module Rptr_empty_ADDR_WIDTH3_test_1 ( rq2_wptr, R_inc, R_CLK, R_rst_n, R_addr, 
        R_ptr, R_empty, test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] R_addr;
  output [3:0] R_ptr;
  input R_inc, R_CLK, R_rst_n, test_si, test_se;
  output R_empty;
  wire   R_empty_val, \R_bin[3] , n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [2:0] R_gray_next;
  wire   [3:0] R_bin_next;

  SDFFRQX2M \R_bin_reg[3]  ( .D(R_bin_next[3]), .SI(R_addr[2]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(\R_bin[3] ) );
  SDFFRQX2M \R_bin_reg[0]  ( .D(R_bin_next[0]), .SI(test_si), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_addr[0]) );
  SDFFRQX2M \R_bin_reg[2]  ( .D(R_bin_next[2]), .SI(R_addr[1]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_addr[2]) );
  SDFFRQX2M \R_bin_reg[1]  ( .D(R_bin_next[1]), .SI(R_addr[0]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_addr[1]) );
  SDFFRQX2M \R_ptr_reg[0]  ( .D(R_gray_next[0]), .SI(R_empty), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_ptr[0]) );
  SDFFRQX2M \R_ptr_reg[3]  ( .D(R_bin_next[3]), .SI(R_ptr[2]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_ptr[3]) );
  SDFFRQX2M \R_ptr_reg[2]  ( .D(R_gray_next[2]), .SI(R_ptr[1]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_ptr[2]) );
  SDFFRQX2M \R_ptr_reg[1]  ( .D(R_gray_next[1]), .SI(R_ptr[0]), .SE(test_se), 
        .CK(R_CLK), .RN(R_rst_n), .Q(R_ptr[1]) );
  SDFFSQX1M R_empty_reg ( .D(R_empty_val), .SI(\R_bin[3] ), .SE(test_se), .CK(
        R_CLK), .SN(R_rst_n), .Q(R_empty) );
  CLKXOR2X2M U13 ( .A(R_bin_next[3]), .B(R_bin_next[2]), .Y(R_gray_next[2]) );
  CLKXOR2X2M U14 ( .A(R_bin_next[2]), .B(R_bin_next[1]), .Y(R_gray_next[1]) );
  CLKXOR2X2M U15 ( .A(R_bin_next[1]), .B(R_bin_next[0]), .Y(R_gray_next[0]) );
  XNOR2X2M U16 ( .A(n14), .B(\R_bin[3] ), .Y(R_bin_next[3]) );
  NAND3X2M U17 ( .A(R_addr[1]), .B(n15), .C(R_addr[2]), .Y(n14) );
  XNOR2X2M U18 ( .A(n16), .B(R_addr[2]), .Y(R_bin_next[2]) );
  NAND2X2M U19 ( .A(R_addr[1]), .B(n15), .Y(n16) );
  NOR4X1M U20 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(R_empty_val) );
  CLKXOR2X2M U21 ( .A(rq2_wptr[3]), .B(R_bin_next[3]), .Y(n11) );
  CLKXOR2X2M U22 ( .A(rq2_wptr[2]), .B(R_gray_next[2]), .Y(n10) );
  CLKXOR2X2M U23 ( .A(rq2_wptr[0]), .B(R_gray_next[0]), .Y(n12) );
  NOR2BX2M U24 ( .AN(R_inc), .B(R_empty), .Y(n17) );
  AND2X2M U25 ( .A(R_addr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U26 ( .A(n15), .B(R_addr[1]), .Y(R_bin_next[1]) );
  CLKXOR2X2M U27 ( .A(rq2_wptr[1]), .B(R_gray_next[1]), .Y(n13) );
  CLKXOR2X2M U28 ( .A(n17), .B(R_addr[0]), .Y(R_bin_next[0]) );
endmodule


module Wptr_full_ADDR_WIDTH3_test_1 ( wq2_rptr, W_inc, W_CLK, W_rst_n, W_addr, 
        W_ptr, W_full, test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] W_addr;
  output [3:0] W_ptr;
  input W_inc, W_CLK, W_rst_n, test_si, test_se;
  output W_full;
  wire   W_full_val, \W_bin[3] , n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [2:0] W_gray_next;
  wire   [3:0] W_bin_next;

  SDFFRQX2M \W_bin_reg[3]  ( .D(W_bin_next[3]), .SI(W_addr[2]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(\W_bin[3] ) );
  SDFFRQX2M \W_bin_reg[2]  ( .D(W_bin_next[2]), .SI(W_addr[1]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_addr[2]) );
  SDFFRQX2M \W_bin_reg[0]  ( .D(W_bin_next[0]), .SI(test_si), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_addr[0]) );
  SDFFRQX2M \W_bin_reg[1]  ( .D(W_bin_next[1]), .SI(W_addr[0]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_addr[1]) );
  SDFFRQX2M W_full_reg ( .D(W_full_val), .SI(\W_bin[3] ), .SE(test_se), .CK(
        W_CLK), .RN(W_rst_n), .Q(W_full) );
  SDFFRQX2M \W_ptr_reg[0]  ( .D(W_gray_next[0]), .SI(W_full), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_ptr[0]) );
  SDFFRQX2M \W_ptr_reg[3]  ( .D(W_bin_next[3]), .SI(W_ptr[2]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_ptr[3]) );
  SDFFRQX2M \W_ptr_reg[2]  ( .D(W_gray_next[2]), .SI(W_ptr[1]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_ptr[2]) );
  SDFFRQX2M \W_ptr_reg[1]  ( .D(W_gray_next[1]), .SI(W_ptr[0]), .SE(test_se), 
        .CK(W_CLK), .RN(W_rst_n), .Q(W_ptr[1]) );
  CLKXOR2X2M U12 ( .A(W_bin_next[2]), .B(W_bin_next[1]), .Y(W_gray_next[1]) );
  CLKXOR2X2M U13 ( .A(W_bin_next[1]), .B(W_bin_next[0]), .Y(W_gray_next[0]) );
  CLKXOR2X2M U14 ( .A(W_bin_next[3]), .B(W_bin_next[2]), .Y(W_gray_next[2]) );
  XNOR2X2M U15 ( .A(n16), .B(W_addr[2]), .Y(W_bin_next[2]) );
  NAND2X2M U16 ( .A(W_addr[1]), .B(n15), .Y(n16) );
  XNOR2X2M U17 ( .A(n14), .B(\W_bin[3] ), .Y(W_bin_next[3]) );
  NAND3X2M U18 ( .A(W_addr[1]), .B(n15), .C(W_addr[2]), .Y(n14) );
  NOR4X1M U19 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(W_full_val) );
  XNOR2X2M U20 ( .A(W_bin_next[3]), .B(wq2_rptr[3]), .Y(n10) );
  XNOR2X2M U21 ( .A(W_gray_next[2]), .B(wq2_rptr[2]), .Y(n11) );
  CLKXOR2X2M U22 ( .A(wq2_rptr[0]), .B(W_gray_next[0]), .Y(n12) );
  NOR2BX2M U23 ( .AN(W_inc), .B(W_full), .Y(n17) );
  AND2X2M U24 ( .A(W_addr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(W_addr[1]), .Y(W_bin_next[1]) );
  CLKXOR2X2M U26 ( .A(wq2_rptr[1]), .B(W_gray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(W_addr[0]), .Y(W_bin_next[0]) );
endmodule


module SYNC_ADDR_WIDTH3_test_0 ( ASYNC_addr, CLK, RST, SYNC_addr, test_se );
  input [3:0] ASYNC_addr;
  output [3:0] SYNC_addr;
  input CLK, RST, test_se;
  wire   \SYNC[3][0] , \SYNC[2][0] , \SYNC[1][0] , \SYNC[0][0] ;

  SDFFRQX2M \SYNC_reg[3][1]  ( .D(\SYNC[3][0] ), .SI(\SYNC[3][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[3]) );
  SDFFRQX2M \SYNC_reg[2][1]  ( .D(\SYNC[2][0] ), .SI(\SYNC[2][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[2]) );
  SDFFRQX2M \SYNC_reg[1][1]  ( .D(\SYNC[1][0] ), .SI(\SYNC[1][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[1]) );
  SDFFRQX2M \SYNC_reg[0][1]  ( .D(\SYNC[0][0] ), .SI(\SYNC[0][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[0]) );
  SDFFRQX2M \SYNC_reg[3][0]  ( .D(ASYNC_addr[3]), .SI(SYNC_addr[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[3][0] ) );
  SDFFRQX2M \SYNC_reg[2][0]  ( .D(ASYNC_addr[2]), .SI(SYNC_addr[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[2][0] ) );
  SDFFRQX2M \SYNC_reg[1][0]  ( .D(ASYNC_addr[1]), .SI(SYNC_addr[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[1][0] ) );
  SDFFRQX2M \SYNC_reg[0][0]  ( .D(ASYNC_addr[0]), .SI(ASYNC_addr[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[0][0] ) );
endmodule


module SYNC_ADDR_WIDTH3_test_1 ( ASYNC_addr, CLK, RST, SYNC_addr, test_si, 
        test_se );
  input [3:0] ASYNC_addr;
  output [3:0] SYNC_addr;
  input CLK, RST, test_si, test_se;
  wire   \SYNC[3][0] , \SYNC[2][0] , \SYNC[1][0] , \SYNC[0][0] ;

  SDFFRQX2M \SYNC_reg[2][1]  ( .D(\SYNC[2][0] ), .SI(\SYNC[2][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[2]) );
  SDFFRQX2M \SYNC_reg[1][1]  ( .D(\SYNC[1][0] ), .SI(\SYNC[1][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[1]) );
  SDFFRQX2M \SYNC_reg[0][1]  ( .D(\SYNC[0][0] ), .SI(\SYNC[0][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[0]) );
  SDFFRQX2M \SYNC_reg[3][0]  ( .D(ASYNC_addr[3]), .SI(SYNC_addr[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[3][0] ) );
  SDFFRQX2M \SYNC_reg[2][0]  ( .D(ASYNC_addr[2]), .SI(SYNC_addr[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[2][0] ) );
  SDFFRQX2M \SYNC_reg[1][0]  ( .D(ASYNC_addr[1]), .SI(SYNC_addr[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYNC[1][0] ) );
  SDFFRQX2M \SYNC_reg[0][0]  ( .D(ASYNC_addr[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\SYNC[0][0] ) );
  SDFFRQX1M \SYNC_reg[3][1]  ( .D(\SYNC[3][0] ), .SI(\SYNC[3][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_addr[3]) );
endmodule


module ASYC_FIFO_test_1 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, 
        FULL, EMPTY, RD_DATA, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5;
  wire   [2:0] W_addr;
  wire   [2:0] R_addr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] R_ptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] W_ptr;
  assign test_so2 = W_ptr[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  FIFO_Memory_BUS_WIDTH8_ADDR_WIDTH3_DEPTH8_test_1 FIFO_memory ( .W_data(
        WR_DATA), .W_addr(W_addr), .R_addr(R_addr), .W_inc(W_INC), .W_full(
        FULL), .W_CLK(W_CLK), .W_RST(n3), .R_data(RD_DATA), .test_si2(test_si2), .test_si1(test_si1), .test_so2(n5), .test_so1(test_so1), .test_se(test_se)
         );
  Rptr_empty_ADDR_WIDTH3_test_1 Rptr_empty ( .rq2_wptr(rq2_wptr), .R_inc(R_INC), .R_CLK(R_CLK), .R_rst_n(n1), .R_addr(R_addr), .R_ptr(R_ptr), .R_empty(EMPTY), 
        .test_si(n5), .test_se(test_se) );
  Wptr_full_ADDR_WIDTH3_test_1 Wptr_full ( .wq2_rptr(wq2_rptr), .W_inc(W_INC), 
        .W_CLK(W_CLK), .W_rst_n(n3), .W_addr(W_addr), .W_ptr(W_ptr), .W_full(
        FULL), .test_si(rq2_wptr[3]), .test_se(test_se) );
  SYNC_ADDR_WIDTH3_test_0 SYNC_r2w ( .ASYNC_addr(R_ptr), .CLK(W_CLK), .RST(n3), 
        .SYNC_addr(wq2_rptr), .test_se(test_se) );
  SYNC_ADDR_WIDTH3_test_1 SYNC_w2r ( .ASYNC_addr(W_ptr), .CLK(R_CLK), .RST(n1), 
        .SYNC_addr(rq2_wptr), .test_si(wq2_rptr[3]), .test_se(test_se) );
endmodule


module Pulse_Gen_test_1 ( In_Sig, CLK, RST, Pulse, test_si, test_so, test_se
 );
  input In_Sig, CLK, RST, test_si, test_se;
  output Pulse, test_so;

  wire   [1:0] Pulse_reg;
  assign test_so = Pulse_reg[1];

  SDFFRQX2M \Pulse_reg_reg[0]  ( .D(In_Sig), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Pulse_reg[0]) );
  SDFFRQX2M \Pulse_reg_reg[1]  ( .D(Pulse_reg[0]), .SI(Pulse_reg[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Pulse_reg[1]) );
  NOR2BX2M U5 ( .AN(Pulse_reg[0]), .B(Pulse_reg[1]), .Y(Pulse) );
endmodule


module TX_FSM_test_1 ( Data_Valid, ser_done, PAR_EN, CLK, RST, ser_en, mux_sel, 
        Busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, PAR_EN, CLK, RST, test_si, test_se;
  output ser_en, Busy, test_so;
  wire   n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n5, n7,
         n20, n21;
  wire   [2:0] Current_State;
  assign test_so = n7;

  SDFFRQX2M \Current_State_reg[1]  ( .D(n17), .SI(n21), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Current_State[1]) );
  SDFFRQX2M \Current_State_reg[2]  ( .D(n18), .SI(Current_State[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Current_State[2]) );
  SDFFRX1M \Current_State_reg[0]  ( .D(n19), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n21), .QN(n6) );
  NAND2X2M U7 ( .A(n8), .B(n7), .Y(n9) );
  NAND2BX2M U8 ( .AN(n14), .B(n9), .Y(ser_en) );
  NAND2BX2M U9 ( .AN(ser_en), .B(n15), .Y(Busy) );
  OR2X2M U10 ( .A(n8), .B(mux_sel[0]), .Y(n17) );
  NOR3X2M U11 ( .A(Current_State[1]), .B(Current_State[2]), .C(n6), .Y(n14) );
  NOR2X2M U12 ( .A(n20), .B(n6), .Y(n8) );
  INVX2M U13 ( .A(Current_State[2]), .Y(n7) );
  INVX2M U14 ( .A(Current_State[1]), .Y(n20) );
  AOI2B1X1M U15 ( .A1N(n16), .A0(n15), .B0(Current_State[2]), .Y(mux_sel[0])
         );
  NOR2X2M U16 ( .A(Current_State[1]), .B(n6), .Y(n16) );
  OAI221X1M U17 ( .A0(ser_done), .A1(n9), .B0(n6), .B1(n11), .C0(n13), .Y(n19)
         );
  AOI31X2M U18 ( .A0(n20), .A1(n7), .A2(Data_Valid), .B0(n14), .Y(n13) );
  OAI31X1M U19 ( .A0(n5), .A1(PAR_EN), .A2(n9), .B0(n10), .Y(n18) );
  INVX2M U20 ( .A(ser_done), .Y(n5) );
  NOR2BX2M U21 ( .AN(n11), .B(n12), .Y(n10) );
  NAND2X2M U22 ( .A(Current_State[1]), .B(n6), .Y(n15) );
  NOR2X2M U23 ( .A(n15), .B(Current_State[2]), .Y(n12) );
  NAND2X2M U24 ( .A(Current_State[2]), .B(n15), .Y(n11) );
  NAND2BX2M U25 ( .AN(n12), .B(n9), .Y(mux_sel[1]) );
endmodule


module Serializer_test_1 ( P_Data, ser_en, Data_Valid, CLK, RST, ser_done, 
        ser_data, test_si, test_so, test_se );
  input [7:0] P_Data;
  input ser_en, Data_Valid, CLK, RST, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N26, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n15, n16, n17, n18, n33, n48;
  wire   [7:0] serializer;
  wire   [3:0] count;
  assign test_so = serializer[7];

  SDFFRQX2M \serializer_reg[7]  ( .D(n43), .SI(serializer[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[7]) );
  SDFFRQX2M \serializer_reg[6]  ( .D(n37), .SI(serializer[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[6]) );
  SDFFRQX2M \serializer_reg[5]  ( .D(n38), .SI(serializer[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[5]) );
  SDFFRQX2M \serializer_reg[4]  ( .D(n39), .SI(serializer[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[4]) );
  SDFFRQX2M \serializer_reg[3]  ( .D(n40), .SI(serializer[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[3]) );
  SDFFRQX2M \serializer_reg[2]  ( .D(n41), .SI(serializer[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(serializer[2]) );
  SDFFRQX2M \serializer_reg[1]  ( .D(n42), .SI(n48), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(serializer[1]) );
  SDFFRQX2M ser_data_reg ( .D(n35), .SI(count[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ser_data) );
  SDFFRQX2M ser_done_reg ( .D(N26), .SI(ser_data), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ser_done) );
  SDFFRX1M \serializer_reg[0]  ( .D(n36), .SI(ser_done), .SE(test_se), .CK(CLK), .RN(RST), .Q(n48), .QN(n19) );
  SDFFRQX2M \count_reg[2]  ( .D(n44), .SI(count[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(count[2]) );
  SDFFRQX2M \count_reg[3]  ( .D(n46), .SI(n18), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(count[3]) );
  SDFFRQX2M \count_reg[0]  ( .D(n47), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(count[0]) );
  SDFFRQX2M \count_reg[1]  ( .D(n45), .SI(n17), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(count[1]) );
  OR2X2M U17 ( .A(n23), .B(n16), .Y(n21) );
  NOR2BX2M U18 ( .AN(Data_Valid), .B(ser_en), .Y(n23) );
  INVX2M U19 ( .A(n20), .Y(n16) );
  AOI21BX2M U20 ( .A0(n17), .A1(n16), .B0N(n21), .Y(n32) );
  NAND2X2M U21 ( .A(ser_en), .B(n34), .Y(n20) );
  NAND4X2M U22 ( .A(count[3]), .B(n17), .C(n33), .D(n18), .Y(n34) );
  OAI21X2M U23 ( .A0(count[1]), .A1(n20), .B0(n32), .Y(n30) );
  INVX2M U24 ( .A(count[0]), .Y(n17) );
  AO22X1M U25 ( .A0(n16), .A1(N26), .B0(count[3]), .B1(n15), .Y(n46) );
  AO21XLM U26 ( .A0(n16), .A1(n18), .B0(n30), .Y(n15) );
  INVX2M U27 ( .A(count[1]), .Y(n33) );
  OAI2BB1X2M U28 ( .A0N(n30), .A1N(count[2]), .B0(n31), .Y(n44) );
  NAND4X2M U29 ( .A(count[1]), .B(count[0]), .C(n16), .D(n18), .Y(n31) );
  OAI32X1M U30 ( .A0(n17), .A1(count[1]), .A2(n20), .B0(n32), .B1(n33), .Y(n45) );
  OAI22X1M U31 ( .A0(n21), .A1(n17), .B0(count[0]), .B1(n20), .Y(n47) );
  NOR4X1M U32 ( .A(n18), .B(n33), .C(n17), .D(count[3]), .Y(N26) );
  OAI2BB2X1M U33 ( .B0(n20), .B1(n19), .A0N(ser_data), .A1N(n20), .Y(n35) );
  OAI2B1X2M U34 ( .A1N(serializer[1]), .A0(n21), .B0(n29), .Y(n42) );
  AOI22X1M U35 ( .A0(P_Data[1]), .A1(n23), .B0(serializer[2]), .B1(n16), .Y(
        n29) );
  OAI2B1X2M U36 ( .A1N(serializer[2]), .A0(n21), .B0(n28), .Y(n41) );
  AOI22X1M U37 ( .A0(P_Data[2]), .A1(n23), .B0(serializer[3]), .B1(n16), .Y(
        n28) );
  OAI2B1X2M U38 ( .A1N(serializer[3]), .A0(n21), .B0(n27), .Y(n40) );
  AOI22X1M U39 ( .A0(P_Data[3]), .A1(n23), .B0(serializer[4]), .B1(n16), .Y(
        n27) );
  OAI2B1X2M U40 ( .A1N(serializer[4]), .A0(n21), .B0(n26), .Y(n39) );
  AOI22X1M U41 ( .A0(P_Data[4]), .A1(n23), .B0(serializer[5]), .B1(n16), .Y(
        n26) );
  OAI2B1X2M U42 ( .A1N(serializer[5]), .A0(n21), .B0(n25), .Y(n38) );
  AOI22X1M U43 ( .A0(P_Data[5]), .A1(n23), .B0(serializer[6]), .B1(n16), .Y(
        n25) );
  OAI2B1X2M U44 ( .A1N(serializer[6]), .A0(n21), .B0(n24), .Y(n37) );
  AOI22X1M U45 ( .A0(P_Data[6]), .A1(n23), .B0(serializer[7]), .B1(n16), .Y(
        n24) );
  OAI21X2M U46 ( .A0(n19), .A1(n21), .B0(n22), .Y(n36) );
  AOI22X1M U47 ( .A0(P_Data[0]), .A1(n23), .B0(serializer[1]), .B1(n16), .Y(
        n22) );
  INVX2M U48 ( .A(count[2]), .Y(n18) );
  AO2B2X2M U49 ( .B0(P_Data[7]), .B1(n23), .A0(serializer[7]), .A1N(n23), .Y(
        n43) );
endmodule


module Parity_Calc_test_1 ( P_Data, Data_Valid, Busy, PAR_TYP, CLK, RST, 
        par_bit, test_si, test_se );
  input [7:0] P_Data;
  input Data_Valid, Busy, PAR_TYP, CLK, RST, test_si, test_se;
  output par_bit;
  wire   n2, n3, n4, n5, n6, n7, n8;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_bit) );
  XNOR2X2M U3 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n6) );
  XOR3XLM U4 ( .A(P_Data[5]), .B(P_Data[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U5 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n2), .B1(n3), .A0N(par_bit), .A1N(n3), .Y(n8) );
  NAND2BX2M U7 ( .AN(Busy), .B(Data_Valid), .Y(n3) );
  XOR3XLM U8 ( .A(n4), .B(PAR_TYP), .C(n5), .Y(n2) );
  XOR3XLM U9 ( .A(P_Data[1]), .B(P_Data[0]), .C(n6), .Y(n5) );
endmodule


module MUX ( ser_data, par_bit, mux_sel, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n1, n2;

  OAI21X4M U3 ( .A0(mux_sel[0]), .A1(n1), .B0(n2), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(mux_sel[0]), .C(par_bit), .Y(n2) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(ser_data), .Y(n1) );
endmodule


module UART_TX_test_1 ( P_Data, Data_Valid, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, 
        Busy, test_si, test_so, test_se );
  input [7:0] P_Data;
  input Data_Valid, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, Busy, test_so;
  wire   ser_done, ser_en, ser_data, par_bit, n1, n2, n4;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  TX_FSM_test_1 fsm ( .Data_Valid(Data_Valid), .ser_done(ser_done), .PAR_EN(
        PAR_EN), .CLK(CLK), .RST(n1), .ser_en(ser_en), .mux_sel(mux_sel), 
        .Busy(Busy), .test_si(test_si), .test_so(n4), .test_se(test_se) );
  Serializer_test_1 serializer ( .P_Data(P_Data), .ser_en(ser_en), 
        .Data_Valid(Data_Valid), .CLK(CLK), .RST(n1), .ser_done(ser_done), 
        .ser_data(ser_data), .test_si(par_bit), .test_so(test_so), .test_se(
        test_se) );
  Parity_Calc_test_1 parit_calc ( .P_Data(P_Data), .Data_Valid(Data_Valid), 
        .Busy(Busy), .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n1), .par_bit(par_bit), 
        .test_si(n4), .test_se(test_se) );
  MUX mux ( .ser_data(ser_data), .par_bit(par_bit), .mux_sel(mux_sel), 
        .TX_OUT(TX_OUT) );
endmodule


module Parity_Check_test_1 ( Par_chk_en, P_DATA, Sampled_bit, PAR_TYP, PAR_EN, 
        CLK, RST, Par_err, test_si, test_se );
  input [7:0] P_DATA;
  input Par_chk_en, Sampled_bit, PAR_TYP, PAR_EN, CLK, RST, test_si, test_se;
  output Par_err;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n2;

  SDFFRQX2M Par_err_reg ( .D(n10), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Par_err) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n8), .Y(n7) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n8) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n9), .Y(n6) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n9) );
  NOR2BX2M U8 ( .AN(PAR_EN), .B(n3), .Y(n10) );
  AOI22X1M U9 ( .A0(Par_chk_en), .A1(n4), .B0(Par_err), .B1(n2), .Y(n3) );
  INVX2M U10 ( .A(Par_chk_en), .Y(n2) );
  XOR3XLM U11 ( .A(n5), .B(n6), .C(n7), .Y(n4) );
  CLKXOR2X2M U12 ( .A(Sampled_bit), .B(PAR_TYP), .Y(n5) );
endmodule


module Strt_Check_test_1 ( Strt_chk_en, Sampled_bit, CLK, RST, Strt_glitch, 
        test_si, test_se );
  input Strt_chk_en, Sampled_bit, CLK, RST, test_si, test_se;
  output Strt_glitch;
  wire   n2;

  SDFFRQX2M Strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Strt_glitch) );
  AO2B2X2M U2 ( .B0(Strt_chk_en), .B1(Sampled_bit), .A0(Strt_glitch), .A1N(
        Strt_chk_en), .Y(n2) );
endmodule


module Stop_Check_test_1 ( Stp_chk_en, Sampled_bit, CLK, RST, Stp_err, test_si, 
        test_se );
  input Stp_chk_en, Sampled_bit, CLK, RST, test_si, test_se;
  output Stp_err;
  wire   n3, n1, n5, n6;

  SDFFRQX2M Stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Stp_err) );
  OAI2BB2X1M U2 ( .B0(Sampled_bit), .B1(n1), .A0N(n6), .A1N(n1), .Y(n3) );
  INVX2M U3 ( .A(Stp_chk_en), .Y(n1) );
  INVXLM U5 ( .A(Stp_err), .Y(n5) );
  INVXLM U6 ( .A(n5), .Y(n6) );
endmodule


module Edge_bit_counter_test_1 ( Enable, Prescale, CLK, RST, Bit_cnt, Edge_cnt, 
        test_si, test_se );
  input [5:0] Prescale;
  output [3:0] Bit_cnt;
  output [4:0] Edge_cnt;
  input Enable, CLK, RST, test_si, test_se;
  wire   N39, N40, N41, N76, N77, N78, N79, N80, n14, n15, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         \r76/carry[4] , \r76/carry[3] , \r76/carry[2] , n11, n12, n13, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n57, n58;

  SDFFRQX2M \Bit_cnt_reg[3]  ( .D(n55), .SI(n21), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Bit_cnt[3]) );
  SDFFRQX2M \Bit_cnt_reg[1]  ( .D(n54), .SI(n19), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Bit_cnt[1]) );
  SDFFRQX2M \Bit_cnt_reg[2]  ( .D(n53), .SI(Bit_cnt[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Bit_cnt[2]) );
  SDFFRQX2M \Edge_cnt_reg[4]  ( .D(N80), .SI(Edge_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Edge_cnt[4]) );
  SDFFRQX2M \Bit_cnt_reg[0]  ( .D(n56), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Bit_cnt[0]) );
  SDFFRQX2M \Edge_cnt_reg[2]  ( .D(N78), .SI(n14), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Edge_cnt[2]) );
  SDFFRQX2M \Edge_cnt_reg[3]  ( .D(N79), .SI(Edge_cnt[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Edge_cnt[3]) );
  SDFFRX1M \Edge_cnt_reg[0]  ( .D(N76), .SI(Bit_cnt[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Edge_cnt[0]), .QN(n15) );
  SDFFRX1M \Edge_cnt_reg[1]  ( .D(N77), .SI(n15), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Edge_cnt[1]), .QN(n14) );
  NOR4X1M U13 ( .A(n22), .B(n20), .C(Bit_cnt[0]), .D(Bit_cnt[2]), .Y(n46) );
  INVX2M U14 ( .A(n26), .Y(n12) );
  NAND2X2M U15 ( .A(n13), .B(n33), .Y(n26) );
  INVX2M U16 ( .A(n30), .Y(n16) );
  OAI31X1M U17 ( .A0(n57), .A1(n37), .A2(n17), .B0(n40), .Y(n33) );
  INVX2M U18 ( .A(n45), .Y(n17) );
  AOI33X2M U19 ( .A0(n41), .A1(n42), .A2(n43), .B0(n44), .B1(n35), .B2(n24), 
        .Y(n40) );
  OAI211X2M U20 ( .A0(n34), .A1(n35), .B0(n18), .C0(n36), .Y(n30) );
  INVX2M U21 ( .A(n47), .Y(n18) );
  AOI211X2M U22 ( .A0(n37), .A1(n38), .B0(n33), .C0(n39), .Y(n36) );
  OAI32X1M U23 ( .A0(n24), .A1(n38), .A2(n43), .B0(n42), .B1(n23), .Y(n47) );
  NAND2X2M U24 ( .A(n44), .B(n46), .Y(n35) );
  NAND2X2M U25 ( .A(n41), .B(n46), .Y(n42) );
  INVX2M U26 ( .A(n39), .Y(n13) );
  INVX2M U27 ( .A(n38), .Y(n57) );
  AND2X2M U28 ( .A(n46), .B(n45), .Y(n37) );
  INVX2M U29 ( .A(n34), .Y(n24) );
  NAND2X2M U30 ( .A(n13), .B(n49), .Y(n48) );
  OAI222X1M U31 ( .A0(n44), .A1(n34), .B0(n41), .B1(n23), .C0(n45), .C1(n57), 
        .Y(n49) );
  NOR2BX2M U32 ( .AN(N41), .B(n48), .Y(N79) );
  NOR2BX2M U33 ( .AN(N40), .B(n48), .Y(N78) );
  NOR2BX2M U34 ( .AN(N39), .B(n48), .Y(N77) );
  INVX2M U35 ( .A(n43), .Y(n23) );
  OAI32X1M U36 ( .A0(n26), .A1(Bit_cnt[1]), .A2(n19), .B0(n29), .B1(n20), .Y(
        n54) );
  AOI21X2M U37 ( .A0(n12), .A1(n19), .B0(n16), .Y(n29) );
  OAI32X1M U38 ( .A0(n26), .A1(Bit_cnt[2]), .A2(n27), .B0(n28), .B1(n21), .Y(
        n53) );
  AOI21X2M U39 ( .A0(n12), .A1(n27), .B0(n16), .Y(n28) );
  NOR4BX1M U40 ( .AN(Edge_cnt[2]), .B(n14), .C(n15), .D(Edge_cnt[4]), .Y(n50)
         );
  NOR3X2M U41 ( .A(Prescale[3]), .B(Prescale[4]), .C(n25), .Y(n43) );
  NOR3X2M U42 ( .A(Prescale[4]), .B(Prescale[5]), .C(n58), .Y(n38) );
  OAI22X1M U43 ( .A0(n22), .A1(n30), .B0(n31), .B1(n26), .Y(n55) );
  XNOR2X2M U44 ( .A(Bit_cnt[3]), .B(n32), .Y(n31) );
  NOR2X2M U45 ( .A(n27), .B(n21), .Y(n32) );
  OAI22X1M U46 ( .A0(n19), .A1(n30), .B0(Bit_cnt[0]), .B1(n26), .Y(n56) );
  NAND3BX2M U47 ( .AN(Prescale[0]), .B(Enable), .C(n52), .Y(n39) );
  NOR2X2M U48 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n52) );
  NOR2BX2M U49 ( .AN(n50), .B(Edge_cnt[3]), .Y(n45) );
  NAND3X2M U50 ( .A(n58), .B(n25), .C(Prescale[4]), .Y(n34) );
  AND4X2M U51 ( .A(Edge_cnt[4]), .B(Edge_cnt[3]), .C(n51), .D(Edge_cnt[2]), 
        .Y(n41) );
  NOR2X2M U52 ( .A(n15), .B(n14), .Y(n51) );
  INVX2M U53 ( .A(Prescale[3]), .Y(n58) );
  INVX2M U54 ( .A(Prescale[5]), .Y(n25) );
  AND2X2M U55 ( .A(n50), .B(Edge_cnt[3]), .Y(n44) );
  INVX2M U56 ( .A(Bit_cnt[1]), .Y(n20) );
  INVX2M U57 ( .A(Bit_cnt[3]), .Y(n22) );
  NAND2X2M U58 ( .A(Bit_cnt[0]), .B(Bit_cnt[1]), .Y(n27) );
  INVX2M U59 ( .A(Bit_cnt[0]), .Y(n19) );
  NOR2X2M U60 ( .A(n11), .B(n48), .Y(N80) );
  XNOR2X2M U61 ( .A(\r76/carry[4] ), .B(Edge_cnt[4]), .Y(n11) );
  NOR2X2M U62 ( .A(Edge_cnt[0]), .B(n48), .Y(N76) );
  INVX2M U63 ( .A(Bit_cnt[2]), .Y(n21) );
  ADDHX1M U64 ( .A(Edge_cnt[1]), .B(Edge_cnt[0]), .CO(\r76/carry[2] ), .S(N39)
         );
  ADDHX1M U65 ( .A(Edge_cnt[2]), .B(\r76/carry[2] ), .CO(\r76/carry[3] ), .S(
        N40) );
  ADDHX1M U66 ( .A(Edge_cnt[3]), .B(\r76/carry[3] ), .CO(\r76/carry[4] ), .S(
        N41) );
endmodule


module Data_sampling_test_1 ( RX_IN, Dat_samp_en, Edge_cnt, Prescale, CLK, RST, 
        Sampled_bit, test_si, test_se );
  input [4:0] Edge_cnt;
  input [5:0] Prescale;
  input RX_IN, Dat_samp_en, CLK, RST, test_si, test_se;
  output Sampled_bit;
  wire   N30, n5, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n37;
  wire   [2:0] Sample;
  assign N30 = RX_IN;

  SDFFRX1M \Sample_reg[2]  ( .D(n36), .SI(n7), .SE(test_se), .CK(CLK), .RN(RST), .Q(n37), .QN(n5) );
  SDFFRQX2M \Sample_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Sample[0]) );
  SDFFRQX2M \Sample_reg[1]  ( .D(n35), .SI(Sample[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Sample[1]) );
  SDFFRQX2M Sampled_bit_reg ( .D(n33), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Sampled_bit) );
  OAI22X1M U6 ( .A0(n7), .A1(n23), .B0(n6), .B1(n8), .Y(n34) );
  INVX2M U7 ( .A(n23), .Y(n6) );
  NAND2X2M U8 ( .A(n20), .B(n24), .Y(n23) );
  OAI33X2M U9 ( .A0(n10), .A1(Edge_cnt[1]), .A2(Edge_cnt[0]), .B0(n9), .B1(
        Edge_cnt[4]), .B2(n25), .Y(n24) );
  INVX2M U10 ( .A(n21), .Y(n10) );
  AOI33X2M U11 ( .A0(Edge_cnt[3]), .A1(n26), .A2(Edge_cnt[2]), .B0(n12), .B1(
        n14), .B2(n27), .Y(n25) );
  OAI33X2M U12 ( .A0(n11), .A1(Prescale[3]), .A2(n15), .B0(n16), .B1(
        Prescale[4]), .B2(Edge_cnt[2]), .Y(n27) );
  NOR3X2M U13 ( .A(Prescale[3]), .B(Prescale[4]), .C(n14), .Y(n26) );
  NOR4X1M U14 ( .A(Prescale[3]), .B(Edge_cnt[2]), .C(n12), .D(n15), .Y(n30) );
  NOR4X1M U15 ( .A(Prescale[4]), .B(Edge_cnt[3]), .C(n11), .D(n16), .Y(n31) );
  OAI22X1M U16 ( .A0(n5), .A1(n23), .B0(n6), .B1(n7), .Y(n35) );
  AND3X2M U17 ( .A(n17), .B(Dat_samp_en), .C(n32), .Y(n20) );
  NOR2X2M U18 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n32) );
  INVX2M U19 ( .A(Prescale[0]), .Y(n17) );
  INVX2M U20 ( .A(Edge_cnt[3]), .Y(n12) );
  INVX2M U21 ( .A(Prescale[4]), .Y(n15) );
  OAI2BB2X1M U22 ( .B0(n18), .B1(n19), .A0N(Sampled_bit), .A1N(n19), .Y(n33)
         );
  AOI21X2M U23 ( .A0(Sample[1]), .A1(Sample[0]), .B0(n22), .Y(n18) );
  NAND4X2M U24 ( .A(Edge_cnt[0]), .B(n20), .C(n21), .D(n9), .Y(n19) );
  AOI21X2M U25 ( .A0(n7), .A1(n8), .B0(n5), .Y(n22) );
  INVX2M U26 ( .A(Edge_cnt[2]), .Y(n11) );
  NAND2X2M U27 ( .A(n28), .B(n29), .Y(n21) );
  NAND4X2M U28 ( .A(Edge_cnt[4]), .B(n26), .C(n11), .D(n12), .Y(n29) );
  OAI211X2M U29 ( .A0(n30), .A1(n31), .B0(n13), .C0(n14), .Y(n28) );
  INVX2M U30 ( .A(Edge_cnt[4]), .Y(n13) );
  OAI2BB2X1M U31 ( .B0(n6), .B1(n5), .A0N(N30), .A1N(n6), .Y(n36) );
  INVX2M U32 ( .A(Prescale[3]), .Y(n16) );
  INVX2M U33 ( .A(Prescale[5]), .Y(n14) );
  INVX2M U34 ( .A(Edge_cnt[1]), .Y(n9) );
  INVX2M U35 ( .A(Sample[1]), .Y(n7) );
  INVX2M U36 ( .A(Sample[0]), .Y(n8) );
endmodule


module Deserializer_test_1 ( Deser_en, Sampled_bit, Edge_cnt, Prescale, CLK, 
        RST, P_DATA, test_so, test_se );
  input [4:0] Edge_cnt;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input Deser_en, Sampled_bit, CLK, RST, test_se;
  output test_so;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37;
  assign test_so = n31;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n11), .SI(Sampled_bit), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(n32), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(n33), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n30), .A1(n37), .B0(n1), .B1(n36), .Y(n13) );
  OAI22X1M U4 ( .A0(n30), .A1(n36), .B0(n1), .B1(n35), .Y(n15) );
  OAI22X1M U5 ( .A0(n30), .A1(n35), .B0(n1), .B1(n34), .Y(n17) );
  OAI22X1M U6 ( .A0(n30), .A1(n34), .B0(n1), .B1(n33), .Y(n19) );
  OAI22X1M U7 ( .A0(n30), .A1(n33), .B0(n1), .B1(n32), .Y(n21) );
  OAI22X1M U8 ( .A0(n30), .A1(n32), .B0(n1), .B1(n31), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n30) );
  NAND2X2M U10 ( .A(N8), .B(Deser_en), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n37), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n30), .B1(n31), .A0N(Sampled_bit), .A1N(n30), .Y(n25)
         );
  OR2X2M U13 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  INVX2M U14 ( .A(P_DATA[2]), .Y(n36) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n32) );
  INVX2M U16 ( .A(P_DATA[7]), .Y(n31) );
  INVX2M U17 ( .A(P_DATA[3]), .Y(n35) );
  INVX2M U18 ( .A(P_DATA[1]), .Y(n37) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n34) );
  INVX2M U28 ( .A(P_DATA[5]), .Y(n33) );
  CLKINVX1M U29 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U30 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U31 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U32 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U33 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U34 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U35 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U36 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U37 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U38 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U39 ( .AN(Edge_cnt[0]), .B(N1), .Y(n6) );
  OAI2B2X1M U40 ( .A1N(N2), .A0(n6), .B0(Edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U41 ( .AN(N1), .B(Edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U42 ( .A1N(Edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n8) );
  NAND4BBX1M U43 ( .AN(N7), .BN(N6), .C(n9), .D(n8), .Y(n29) );
  CLKXOR2X2M U44 ( .A(N5), .B(Edge_cnt[4]), .Y(n28) );
  CLKXOR2X2M U45 ( .A(N3), .B(Edge_cnt[2]), .Y(n27) );
  CLKXOR2X2M U46 ( .A(N4), .B(Edge_cnt[3]), .Y(n26) );
  NOR4X1M U47 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N8) );
endmodule


module RX_FSM_test_1 ( RX_IN, Prescale, PAR_EN, Edge_cnt, Bit_cnt, Par_err, 
        Strt_glitch, Stp_err, CLK, RST, Enable, Dat_samp_en, Par_chk_en, 
        Strt_chk_en, Stp_chk_en, Deser_en, Data_valid, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  input [4:0] Edge_cnt;
  input [3:0] Bit_cnt;
  input RX_IN, PAR_EN, Par_err, Strt_glitch, Stp_err, CLK, RST, test_si,
         test_se;
  output Enable, Dat_samp_en, Par_chk_en, Strt_chk_en, Stp_chk_en, Deser_en,
         Data_valid, test_so;
  wire   N35, N36, N37, N38, N39, N40, N41, n27, n28, n29, n30, n31, n32, n33,
         n34, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n35, n36;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;
  assign test_so = Current_State[2];

  SDFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(n21), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Current_State[1]) );
  SDFFRQX2M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Current_State[0]) );
  SDFFRQX2M \Current_State_reg[2]  ( .D(Next_State[2]), .SI(n24), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Current_State[2]) );
  NOR2X2M U6 ( .A(n36), .B(N41), .Y(n27) );
  INVX2M U7 ( .A(N41), .Y(n26) );
  INVX2M U8 ( .A(Stp_chk_en), .Y(n23) );
  INVX2M U9 ( .A(Deser_en), .Y(n20) );
  INVX2M U10 ( .A(Par_chk_en), .Y(n22) );
  INVX2M U11 ( .A(Strt_chk_en), .Y(n19) );
  NOR3X2M U12 ( .A(n24), .B(n21), .C(n25), .Y(Data_valid) );
  OAI211X2M U13 ( .A0(n27), .A1(n23), .B0(n30), .C0(n18), .Y(Next_State[1]) );
  OAI2BB1X2M U14 ( .A0N(n26), .A1N(Par_err), .B0(Par_chk_en), .Y(n30) );
  INVX2M U15 ( .A(n31), .Y(n18) );
  OAI31X1M U16 ( .A0(N41), .A1(Strt_glitch), .A2(n19), .B0(n20), .Y(n31) );
  OR2X2M U17 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  OAI221X1M U18 ( .A0(RX_IN), .A1(n32), .B0(n35), .B1(n20), .C0(n33), .Y(
        Next_State[0]) );
  AOI31X2M U19 ( .A0(n24), .A1(n25), .A2(n21), .B0(Data_valid), .Y(n32) );
  INVX2M U20 ( .A(n29), .Y(n35) );
  AOI31X2M U21 ( .A0(n26), .A1(n36), .A2(Stp_chk_en), .B0(n34), .Y(n33) );
  OAI21BX1M U22 ( .A0(n27), .A1(n23), .B0N(n28), .Y(Next_State[2]) );
  OAI33X2M U23 ( .A0(n22), .A1(Par_err), .A2(N41), .B0(n20), .B1(PAR_EN), .B2(
        n29), .Y(n28) );
  AOI21X2M U24 ( .A0(Strt_glitch), .A1(n26), .B0(n19), .Y(n34) );
  INVX2M U25 ( .A(Edge_cnt[1]), .Y(n17) );
  NOR3X2M U26 ( .A(Current_State[0]), .B(Current_State[2]), .C(n24), .Y(
        Par_chk_en) );
  NOR3X2M U27 ( .A(n24), .B(Current_State[0]), .C(n25), .Y(Stp_chk_en) );
  NOR3X2M U28 ( .A(n21), .B(Current_State[2]), .C(n24), .Y(Deser_en) );
  NOR3X2M U29 ( .A(Current_State[1]), .B(Current_State[2]), .C(n21), .Y(
        Strt_chk_en) );
  INVX2M U30 ( .A(Current_State[1]), .Y(n24) );
  INVX2M U31 ( .A(Current_State[0]), .Y(n21) );
  INVX2M U32 ( .A(Current_State[2]), .Y(n25) );
  OAI31X1M U33 ( .A0(Bit_cnt[0]), .A1(Bit_cnt[2]), .A2(Bit_cnt[1]), .B0(
        Bit_cnt[3]), .Y(n29) );
  INVX2M U34 ( .A(Stp_err), .Y(n36) );
  BUFX2M U35 ( .A(Enable), .Y(Dat_samp_en) );
  NAND4X2M U36 ( .A(n20), .B(n22), .C(n23), .D(n19), .Y(Enable) );
  OAI2BB1X1M U37 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N35) );
  OR2X1M U38 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N36) );
  OR2X1M U40 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U41 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N37) );
  OR2X1M U42 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U43 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N38) );
  NOR2X1M U44 ( .A(n5), .B(Prescale[5]), .Y(N40) );
  AO21XLM U45 ( .A0(n5), .A1(Prescale[5]), .B0(N40), .Y(N39) );
  XNOR2X1M U46 ( .A(N37), .B(Edge_cnt[3]), .Y(n16) );
  XNOR2X1M U47 ( .A(N36), .B(Edge_cnt[2]), .Y(n12) );
  XNOR2X1M U48 ( .A(N38), .B(Edge_cnt[4]), .Y(n11) );
  NOR2X1M U49 ( .A(Prescale[0]), .B(Edge_cnt[0]), .Y(n6) );
  OAI22X1M U50 ( .A0(n6), .A1(n17), .B0(N35), .B1(n6), .Y(n9) );
  CLKNAND2X2M U51 ( .A(Edge_cnt[0]), .B(Prescale[0]), .Y(n7) );
  AOI22X1M U52 ( .A0(n7), .A1(n17), .B0(n7), .B1(N35), .Y(n8) );
  NOR4BX1M U53 ( .AN(n9), .B(N40), .C(N39), .D(n8), .Y(n10) );
  NAND4X1M U54 ( .A(n16), .B(n12), .C(n11), .D(n10), .Y(N41) );
endmodule


module UART_RX_test_1 ( RX_IN, PAR_EN, PAR_TYP, CLK, RST, Prescale, 
        Parity_Error, Stop_Error, P_DATA, Data_valid, test_si2, test_si1, 
        test_so1, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si2, test_si1, test_se;
  output Parity_Error, Stop_Error, Data_valid, test_so1;
  wire   Par_chk_en, Sampled_bit, Strt_chk_en, Strt_glitch, Stp_chk_en, Enable,
         Dat_samp_en, Deser_en, n1, n2, n3, n4, n8, n9;
  wire   [3:0] Bit_cnt;
  wire   [4:0] Edge_cnt;
  assign test_so1 = Strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  INVXLM U3 ( .A(Stop_Error), .Y(n8) );
  INVXLM U4 ( .A(n8), .Y(n9) );
  Parity_Check_test_1 U0_parity_check ( .Par_chk_en(Par_chk_en), .P_DATA(
        P_DATA), .Sampled_bit(Sampled_bit), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .CLK(CLK), .RST(n1), .Par_err(Parity_Error), .test_si(Edge_cnt[4]), 
        .test_se(test_se) );
  Strt_Check_test_1 U0_strt_check ( .Strt_chk_en(Strt_chk_en), .Sampled_bit(
        Sampled_bit), .CLK(CLK), .RST(n1), .Strt_glitch(Strt_glitch), 
        .test_si(Parity_Error), .test_se(test_se) );
  Stop_Check_test_1 U0_stop_check ( .Stp_chk_en(Stp_chk_en), .Sampled_bit(
        Sampled_bit), .CLK(CLK), .RST(n1), .Stp_err(Stop_Error), .test_si(
        test_si2), .test_se(test_se) );
  Edge_bit_counter_test_1 U0_edge_bit_counter ( .Enable(Enable), .Prescale(
        Prescale), .CLK(CLK), .RST(n1), .Bit_cnt(Bit_cnt), .Edge_cnt(Edge_cnt), 
        .test_si(n3), .test_se(test_se) );
  Data_sampling_test_1 U0_data_sampling ( .RX_IN(RX_IN), .Dat_samp_en(
        Dat_samp_en), .Edge_cnt(Edge_cnt), .Prescale(Prescale), .CLK(CLK), 
        .RST(n1), .Sampled_bit(Sampled_bit), .test_si(n4), .test_se(test_se)
         );
  Deserializer_test_1 U0_deserializer ( .Deser_en(Deser_en), .Sampled_bit(
        Sampled_bit), .Edge_cnt(Edge_cnt), .Prescale(Prescale), .CLK(CLK), 
        .RST(n1), .P_DATA(P_DATA), .test_so(n3), .test_se(test_se) );
  RX_FSM_test_1 U0_FSM ( .RX_IN(RX_IN), .Prescale(Prescale), .PAR_EN(PAR_EN), 
        .Edge_cnt(Edge_cnt), .Bit_cnt(Bit_cnt), .Par_err(Parity_Error), 
        .Strt_glitch(Strt_glitch), .Stp_err(n9), .CLK(CLK), .RST(n1), .Enable(
        Enable), .Dat_samp_en(Dat_samp_en), .Par_chk_en(Par_chk_en), 
        .Strt_chk_en(Strt_chk_en), .Stp_chk_en(Stp_chk_en), .Deser_en(Deser_en), .Data_valid(Data_valid), .test_si(test_si1), .test_so(n4), .test_se(test_se)
         );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, TX_CLK, TX_CLK_M, RX_CLK, RX_CLK_M, RST_M,
         SYNC_RST_1, rst_1, SYNC_RST_2, rst_2, OUT_Valid, Sync_Valid,
         RdData_Valid, FIFO_FULL, ALU_EN, CLK_EN, WrEN, RdEN, Wr_INC, ALU_CLK,
         _0_net_, RX_D_VLD, Rd_pulse, FIFO_EMPTY, Busy, n1, n2, n3, n4, n5, n6,
         n7, n8, n10, n11, n12, n13, n17, n18, n21, n22, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Sync_DATA;
  wire   [7:0] RdData;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] M_Wr_Data;
  wire   [7:0] F_Wr_Data;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [7:0] UART_config;
  wire   [7:0] TX_Div_Ratio;
  wire   [7:0] RX_P_Data;
  wire   [7:0] RX_Div_Ratio;
  wire   [7:0] TX_DATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign SO[2] = B[7];

  INVX4M U4 ( .A(n8), .Y(n7) );
  INVX2M U5 ( .A(n6), .Y(n5) );
  BUFX2M U6 ( .A(Address[0]), .Y(n3) );
  BUFX2M U7 ( .A(Address[1]), .Y(n4) );
  OR2X2M U8 ( .A(CLK_EN), .B(n2), .Y(_0_net_) );
  INVX2M U9 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX2M U10 ( .A(rst_1), .Y(n8) );
  INVX2M U11 ( .A(rst_2), .Y(n6) );
  BUFX2M U12 ( .A(test_mode), .Y(n2) );
  DLY1X1M U19 ( .A(n27), .Y(n25) );
  INVXLM U20 ( .A(n36), .Y(n26) );
  INVXLM U21 ( .A(n26), .Y(n27) );
  INVXLM U22 ( .A(n26), .Y(n28) );
  INVXLM U23 ( .A(n26), .Y(n29) );
  INVXLM U24 ( .A(n39), .Y(n30) );
  INVXLM U25 ( .A(n30), .Y(n31) );
  INVXLM U26 ( .A(n30), .Y(n32) );
  INVXLM U27 ( .A(n38), .Y(n33) );
  INVXLM U28 ( .A(n33), .Y(n34) );
  INVXLM U29 ( .A(SE), .Y(n35) );
  INVXLM U30 ( .A(n35), .Y(n36) );
  INVXLM U31 ( .A(n35), .Y(n37) );
  INVXLM U32 ( .A(n35), .Y(n38) );
  INVXLM U33 ( .A(n35), .Y(n39) );
  dft_mux_1 ref_clk_mux ( .SEL(n2), .IN0(REF_CLK), .IN1(scan_clk), .OUT(
        REF_CLK_M) );
  dft_mux_4 uart_clk_mux ( .SEL(n2), .IN0(UART_CLK), .IN1(scan_clk), .OUT(
        UART_CLK_M) );
  dft_mux_3 tx_clk_mux ( .SEL(n2), .IN0(TX_CLK), .IN1(scan_clk), .OUT(TX_CLK_M) );
  dft_mux_2 rx_clk_mux ( .SEL(n2), .IN0(RX_CLK), .IN1(scan_clk), .OUT(RX_CLK_M) );
  dft_mux_0 rst_n_mux ( .SEL(n2), .IN0(RST_N), .IN1(scan_rst), .OUT(RST_M) );
  dft_mux_6 rst_1_mux ( .SEL(n2), .IN0(SYNC_RST_1), .IN1(scan_rst), .OUT(rst_1) );
  dft_mux_5 rst_2_mux ( .SEL(n2), .IN0(SYNC_RST_2), .IN1(scan_rst), .OUT(rst_2) );
  SYS_CTRL_test_1 U_SYS_CTRL ( .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), 
        .RX_P_Data(Sync_DATA), .RX_D_VLD(Sync_Valid), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .FIFO_FULL(FIFO_FULL), .CLK(REF_CLK_M), 
        .RST(n7), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEN(WrEN), .RdEN(RdEN), .M_Wr_Data(M_Wr_Data), 
        .F_Wr_Data(F_Wr_Data), .Wr_INC(Wr_INC), .test_si(n13), .test_so(n12), 
        .test_se(n28) );
  ALU_test_1 U_ALU ( .A(A), .B(B), .ALU_FUN(ALU_FUN), .Enable(ALU_EN), .CLK(
        ALU_CLK), .RST(n7), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), 
        .test_si(n21), .test_se(n31) );
  Clock_Gating U_Clock_Gating ( .CLK_EN(_0_net_), .CLK(REF_CLK_M), .GATED_CLK(
        ALU_CLK) );
  Reg_File_test_1 U_Reg_File ( .WrData(M_Wr_Data), .Address({Address[3:2], n4, 
        n3}), .WrEn(WrEN), .RdEn(RdEN), .CLK(REF_CLK_M), .RST(n7), .RdData(
        RdData), .RdData_Valid(RdData_Valid), .REG0(A), .REG1(B), .REG2(
        UART_config), .REG3(TX_Div_Ratio), .test_si3(SI[0]), .test_si2(SI[1]), 
        .test_si1(n17), .test_so2(n13), .test_so1(SO[1]), .test_se(SE) );
  RST_SYNC_test_1 RST_SYNC_1 ( .RST(RST_M), .CLK(REF_CLK_M), .SYNC_RST(
        SYNC_RST_1), .test_si(SI[3]), .test_se(n34) );
  RST_SYNC_test_0 RST_SYNC_2 ( .RST(RST_M), .CLK(UART_CLK_M), .SYNC_RST(
        SYNC_RST_2), .test_si(SYNC_RST_1), .test_se(n29) );
  DATA_SYNC_test_1 U_DATA_SYNC ( .unsync_bus(RX_P_Data), .bus_enable(RX_D_VLD), 
        .CLK(REF_CLK_M), .RST(n7), .sync_bus(Sync_DATA), .enable_pulse(
        Sync_Valid), .test_si(n18), .test_se(n38) );
  Prescale_Mux U_Prescale_Mux ( .sel(UART_config[7:2]), .ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, RX_Div_Ratio[2:0]}) );
  ClkDiv_test_0 RX_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, RX_Div_Ratio[2:0]}), 
        .o_div_clk(RX_CLK), .test_si(SYNC_RST_2), .test_so(n22), .test_se(n32)
         );
  ClkDiv_test_1 TX_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio(TX_Div_Ratio), .o_div_clk(TX_CLK), .test_si(n22), 
        .test_so(n21), .test_se(n34) );
  ASYC_FIFO_test_1 U_ASYC_FIFO ( .W_CLK(REF_CLK_M), .W_RST(n7), .W_INC(Wr_INC), 
        .R_CLK(TX_CLK_M), .R_RST(n5), .R_INC(Rd_pulse), .WR_DATA(F_Wr_Data), 
        .FULL(FIFO_FULL), .EMPTY(FIFO_EMPTY), .RD_DATA(TX_DATA), .test_si2(
        SI[2]), .test_si1(OUT_Valid), .test_so2(n18), .test_so1(SO[3]), 
        .test_se(SE) );
  Pulse_Gen_test_1 U_Pulse_Gen ( .In_Sig(Busy), .CLK(TX_CLK_M), .RST(n5), 
        .Pulse(Rd_pulse), .test_si(Sync_DATA[7]), .test_so(n17), .test_se(n39)
         );
  UART_TX_test_1 U_UART_TX ( .P_Data(TX_DATA), .Data_Valid(n1), .PAR_EN(
        UART_config[0]), .PAR_TYP(UART_config[1]), .CLK(TX_CLK_M), .RST(n5), 
        .TX_OUT(UART_TX_O), .Busy(Busy), .test_si(n11), .test_so(n10), 
        .test_se(n37) );
  UART_RX_test_1 U_UART_RX ( .RX_IN(UART_RX_IN), .PAR_EN(UART_config[0]), 
        .PAR_TYP(UART_config[1]), .CLK(RX_CLK_M), .RST(n5), .Prescale(
        UART_config[7:2]), .Parity_Error(parity_error), .Stop_Error(SO[0]), 
        .P_DATA(RX_P_Data), .Data_valid(RX_D_VLD), .test_si2(n10), .test_si1(
        n12), .test_so1(n11), .test_se(n25) );
  BUFX2M U18 ( .A(SO[0]), .Y(framing_error) );
endmodule

