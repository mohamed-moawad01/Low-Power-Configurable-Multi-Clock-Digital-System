/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 11:28:46 2025
/////////////////////////////////////////////////////////////


module SYS_CTRL ( ALU_OUT, OUT_Valid, RX_P_Data, RX_D_VLD, RdData, 
        RdData_Valid, FIFO_FULL, CLK, RST, ALU_EN, ALU_FUN, CLK_EN, Address, 
        WrEN, RdEN, M_Wr_Data, F_Wr_Data, Wr_INC );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] M_Wr_Data;
  output [7:0] F_Wr_Data;
  input OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL, CLK, RST;
  output ALU_EN, CLK_EN, WrEN, RdEN, Wr_INC;
  wire   Valid, N117, N118, N119, N120, N129, N133, N134, N135, N136, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;
  wire   [3:0] Current_State;
  wire   [3:0] store;
  wire   [7:0] Data;
  wire   [3:0] Next_State;

  DFFRQX2M \Data_reg[0]  ( .D(n66), .CK(CLK), .RN(RST), .Q(Data[0]) );
  DFFRQX2M \Data_reg[1]  ( .D(n67), .CK(CLK), .RN(RST), .Q(Data[1]) );
  DFFRQX2M \Data_reg[2]  ( .D(n68), .CK(CLK), .RN(RST), .Q(Data[2]) );
  DFFRQX2M \Data_reg[3]  ( .D(n69), .CK(CLK), .RN(RST), .Q(Data[3]) );
  DFFRQX2M \Data_reg[4]  ( .D(n70), .CK(CLK), .RN(RST), .Q(Data[4]) );
  DFFRQX2M \Data_reg[5]  ( .D(n71), .CK(CLK), .RN(RST), .Q(Data[5]) );
  DFFRQX2M \Data_reg[6]  ( .D(n72), .CK(CLK), .RN(RST), .Q(Data[6]) );
  DFFRQX2M \Data_reg[7]  ( .D(n73), .CK(CLK), .RN(RST), .Q(Data[7]) );
  DFFRQX2M \store_reg[3]  ( .D(Address[3]), .CK(CLK), .RN(RST), .Q(store[3])
         );
  DFFRQX2M \store_reg[2]  ( .D(Address[2]), .CK(CLK), .RN(RST), .Q(store[2])
         );
  DFFRQX2M \store_reg[1]  ( .D(Address[1]), .CK(CLK), .RN(RST), .Q(store[1])
         );
  DFFRQX2M Valid_reg ( .D(RX_D_VLD), .CK(CLK), .RN(RST), .Q(Valid) );
  DFFRQX2M \store_reg[0]  ( .D(Address[0]), .CK(CLK), .RN(RST), .Q(store[0])
         );
  DFFRQX2M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(CLK), .RN(RST), .Q(
        Current_State[0]) );
  DFFRQX2M \Current_State_reg[2]  ( .D(Next_State[2]), .CK(CLK), .RN(RST), .Q(
        Current_State[2]) );
  DFFRQX2M \Current_State_reg[3]  ( .D(Next_State[3]), .CK(CLK), .RN(RST), .Q(
        Current_State[3]) );
  DFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(CLK), .RN(RST), .Q(
        Current_State[1]) );
  NOR2X2M U3 ( .A(n2), .B(n12), .Y(n1) );
  NOR2X2M U4 ( .A(n77), .B(n27), .Y(ALU_FUN[2]) );
  NOR2X2M U5 ( .A(n79), .B(n27), .Y(ALU_FUN[0]) );
  MX3X1M U6 ( .A(n11), .B(n10), .C(store[3]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[3]) );
  MX3X1M U7 ( .A(n9), .B(n8), .C(store[2]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[2]) );
  INVX2M U8 ( .A(WrEN), .Y(n15) );
  INVX2M U9 ( .A(n41), .Y(n80) );
  INVX2M U10 ( .A(n24), .Y(n13) );
  AOI21X2M U11 ( .A0(n41), .A1(n38), .B0(n16), .Y(WrEN) );
  NOR2X2M U12 ( .A(n78), .B(n27), .Y(ALU_FUN[1]) );
  NAND2X2M U13 ( .A(n57), .B(n12), .Y(n41) );
  NAND2X2M U14 ( .A(n57), .B(n3), .Y(n47) );
  OAI21X2M U15 ( .A0(n16), .A1(n79), .B0(n56), .Y(N117) );
  OAI21X2M U16 ( .A0(n16), .A1(n78), .B0(n55), .Y(N118) );
  NAND2X2M U17 ( .A(n2), .B(n84), .Y(n21) );
  OR3X2M U18 ( .A(n21), .B(n12), .C(n83), .Y(n19) );
  NOR2X2M U19 ( .A(n76), .B(n27), .Y(ALU_FUN[3]) );
  AND2X2M U20 ( .A(n45), .B(n47), .Y(n38) );
  OR3X2M U21 ( .A(n23), .B(n24), .C(n25), .Y(Wr_INC) );
  INVX2M U22 ( .A(n3), .Y(n12) );
  INVX2M U23 ( .A(n55), .Y(N134) );
  INVX2M U24 ( .A(n56), .Y(N129) );
  NOR2X2M U25 ( .A(n29), .B(n18), .Y(n25) );
  NOR2X2M U26 ( .A(n26), .B(n22), .Y(n24) );
  NOR2X2M U27 ( .A(n32), .B(n16), .Y(RdEN) );
  NOR2X2M U28 ( .A(n79), .B(n15), .Y(M_Wr_Data[0]) );
  NOR2X2M U29 ( .A(n78), .B(n15), .Y(M_Wr_Data[1]) );
  NOR2X2M U30 ( .A(n77), .B(n15), .Y(M_Wr_Data[2]) );
  NOR2X2M U31 ( .A(n76), .B(n15), .Y(M_Wr_Data[3]) );
  NOR2X2M U32 ( .A(n75), .B(n15), .Y(M_Wr_Data[7]) );
  NAND3X2M U33 ( .A(n2), .B(n83), .C(n51), .Y(n18) );
  OAI21X2M U34 ( .A0(n16), .A1(n77), .B0(n54), .Y(N119) );
  OAI21X2M U35 ( .A0(n16), .A1(n76), .B0(n53), .Y(N120) );
  NAND2X2M U36 ( .A(n13), .B(n27), .Y(ALU_EN) );
  NAND4BX1M U37 ( .AN(RdEN), .B(n81), .C(n26), .D(n28), .Y(Next_State[2]) );
  AOI211X2M U38 ( .A0(n82), .A1(n29), .B0(n30), .C0(n31), .Y(n28) );
  INVX2M U39 ( .A(n18), .Y(n82) );
  INVX2M U40 ( .A(n54), .Y(N135) );
  INVX2M U41 ( .A(n53), .Y(N136) );
  OAI211X2M U42 ( .A0(n19), .A1(n14), .B0(n26), .C0(n27), .Y(Next_State[3]) );
  AND4X2M U43 ( .A(n18), .B(n81), .C(n19), .D(n20), .Y(n17) );
  NOR2X2M U44 ( .A(n21), .B(n22), .Y(n20) );
  NAND3X2M U45 ( .A(n3), .B(n84), .C(n39), .Y(n33) );
  INVX2M U46 ( .A(CLK_EN), .Y(n81) );
  NOR3BX2M U47 ( .AN(n2), .B(Current_State[3]), .C(n84), .Y(n57) );
  NOR3X2M U48 ( .A(n21), .B(Current_State[3]), .C(n12), .Y(CLK_EN) );
  NOR2X2M U49 ( .A(n19), .B(FIFO_FULL), .Y(n23) );
  NAND2X2M U50 ( .A(CLK_EN), .B(RX_D_VLD), .Y(n27) );
  INVX2M U51 ( .A(RX_D_VLD), .Y(n16) );
  INVX2M U52 ( .A(Current_State[3]), .Y(n83) );
  MX3X1M U53 ( .A(n5), .B(n4), .C(store[0]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[0]) );
  MX2X2M U54 ( .A(store[0]), .B(N117), .S0(n1), .Y(n5) );
  MX4X1M U55 ( .A(N117), .B(store[0]), .C(N129), .D(N133), .S0(n3), .S1(n2), 
        .Y(n4) );
  MX3X1M U56 ( .A(n7), .B(n6), .C(store[1]), .S0(Current_State[1]), .S1(
        Current_State[3]), .Y(Address[1]) );
  MX2X2M U57 ( .A(store[1]), .B(N118), .S0(n1), .Y(n7) );
  MX4X1M U58 ( .A(N118), .B(store[1]), .C(N134), .D(N134), .S0(n3), .S1(n2), 
        .Y(n6) );
  BUFX2M U59 ( .A(Current_State[0]), .Y(n3) );
  INVX2M U60 ( .A(Current_State[1]), .Y(n84) );
  NAND2X2M U61 ( .A(store[0]), .B(n16), .Y(n56) );
  NAND2X2M U62 ( .A(store[1]), .B(n16), .Y(n55) );
  BUFX2M U63 ( .A(Current_State[2]), .Y(n2) );
  NAND2BX2M U64 ( .AN(store[0]), .B(n16), .Y(N133) );
  MX2X2M U65 ( .A(store[3]), .B(N120), .S0(n1), .Y(n11) );
  MX4X1M U66 ( .A(N120), .B(store[3]), .C(N136), .D(N136), .S0(n3), .S1(n2), 
        .Y(n10) );
  OAI31X1M U67 ( .A0(n40), .A1(RX_P_Data[4]), .A2(RX_P_Data[0]), .B0(n41), .Y(
        n31) );
  MX2X2M U68 ( .A(store[2]), .B(N119), .S0(n1), .Y(n9) );
  MX4X1M U69 ( .A(N119), .B(store[2]), .C(N135), .D(N135), .S0(n3), .S1(n2), 
        .Y(n8) );
  NOR2X2M U70 ( .A(n2), .B(Current_State[3]), .Y(n39) );
  OAI211X2M U71 ( .A0(n19), .A1(n14), .B0(n46), .C0(n47), .Y(n30) );
  NAND3BX2M U72 ( .AN(n40), .B(RX_P_Data[0]), .C(RX_P_Data[4]), .Y(n46) );
  NOR2X2M U73 ( .A(n3), .B(Current_State[1]), .Y(n51) );
  OAI211X2M U74 ( .A0(n16), .A1(n33), .B0(n74), .C0(n34), .Y(Next_State[1]) );
  INVX2M U75 ( .A(n31), .Y(n74) );
  AOI31X2M U76 ( .A0(n35), .A1(RX_P_Data[4]), .A2(n36), .B0(n37), .Y(n34) );
  NOR3X2M U77 ( .A(n79), .B(RX_P_Data[6]), .C(RX_P_Data[2]), .Y(n36) );
  OAI2BB1X2M U78 ( .A0N(ALU_OUT[0]), .A1N(n24), .B0(n65), .Y(F_Wr_Data[0]) );
  AOI22X1M U79 ( .A0(RdData[0]), .A1(n25), .B0(n23), .B1(Data[0]), .Y(n65) );
  OAI2BB1X2M U80 ( .A0N(ALU_OUT[1]), .A1N(n24), .B0(n64), .Y(F_Wr_Data[1]) );
  AOI22X1M U81 ( .A0(RdData[1]), .A1(n25), .B0(n23), .B1(Data[1]), .Y(n64) );
  OAI2BB1X2M U82 ( .A0N(ALU_OUT[2]), .A1N(n24), .B0(n63), .Y(F_Wr_Data[2]) );
  AOI22X1M U83 ( .A0(RdData[2]), .A1(n25), .B0(n23), .B1(Data[2]), .Y(n63) );
  OAI2BB1X2M U84 ( .A0N(ALU_OUT[3]), .A1N(n24), .B0(n62), .Y(F_Wr_Data[3]) );
  AOI22X1M U85 ( .A0(RdData[3]), .A1(n25), .B0(n23), .B1(Data[3]), .Y(n62) );
  OAI2BB1X2M U86 ( .A0N(ALU_OUT[4]), .A1N(n24), .B0(n61), .Y(F_Wr_Data[4]) );
  AOI22X1M U87 ( .A0(RdData[4]), .A1(n25), .B0(n23), .B1(Data[4]), .Y(n61) );
  OAI2BB1X2M U88 ( .A0N(ALU_OUT[5]), .A1N(n24), .B0(n60), .Y(F_Wr_Data[5]) );
  AOI22X1M U89 ( .A0(RdData[5]), .A1(n25), .B0(n23), .B1(Data[5]), .Y(n60) );
  OAI2BB1X2M U90 ( .A0N(ALU_OUT[6]), .A1N(n24), .B0(n59), .Y(F_Wr_Data[6]) );
  AOI22X1M U91 ( .A0(RdData[6]), .A1(n25), .B0(n23), .B1(Data[6]), .Y(n59) );
  OAI2BB1X2M U92 ( .A0N(ALU_OUT[7]), .A1N(n24), .B0(n58), .Y(F_Wr_Data[7]) );
  AOI22X1M U93 ( .A0(RdData[7]), .A1(n25), .B0(n23), .B1(Data[7]), .Y(n58) );
  NAND3X2M U94 ( .A(OUT_Valid), .B(n14), .C(Valid), .Y(n22) );
  NAND3X2M U95 ( .A(Current_State[1]), .B(n12), .C(n39), .Y(n32) );
  NAND3X2M U96 ( .A(n51), .B(n2), .C(Current_State[3]), .Y(n26) );
  AOI21X2M U97 ( .A0(n38), .A1(n32), .B0(RX_D_VLD), .Y(n37) );
  INVX2M U98 ( .A(RX_P_Data[0]), .Y(n79) );
  NAND3X2M U99 ( .A(Current_State[1]), .B(n3), .C(n39), .Y(n45) );
  NAND4X2M U100 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n48), .D(n49), .Y(n40) );
  NOR2X2M U101 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .Y(n48) );
  INVX2M U102 ( .A(FIFO_FULL), .Y(n14) );
  NAND3X2M U103 ( .A(Valid), .B(n14), .C(RdData_Valid), .Y(n29) );
  INVX2M U104 ( .A(RX_P_Data[2]), .Y(n77) );
  NAND4X2M U105 ( .A(n33), .B(n13), .C(n42), .D(n43), .Y(Next_State[0]) );
  NAND3X2M U106 ( .A(n35), .B(n79), .C(n50), .Y(n42) );
  AOI211X2M U107 ( .A0(n80), .A1(RX_D_VLD), .B0(n30), .C0(n44), .Y(n43) );
  NOR3X2M U108 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n50)
         );
  NAND2X2M U109 ( .A(store[2]), .B(n16), .Y(n54) );
  NAND2X2M U110 ( .A(store[3]), .B(n16), .Y(n53) );
  AND4X2M U111 ( .A(n39), .B(n51), .C(RX_D_VLD), .D(n52), .Y(n49) );
  NOR2X2M U112 ( .A(n76), .B(n75), .Y(n52) );
  INVX2M U113 ( .A(RX_P_Data[3]), .Y(n76) );
  AND2X2M U114 ( .A(RX_P_Data[4]), .B(WrEN), .Y(M_Wr_Data[4]) );
  AND2X2M U115 ( .A(RX_P_Data[5]), .B(WrEN), .Y(M_Wr_Data[5]) );
  AND2X2M U116 ( .A(RX_P_Data[6]), .B(WrEN), .Y(M_Wr_Data[6]) );
  INVX2M U117 ( .A(RX_P_Data[1]), .Y(n78) );
  AOI21X2M U118 ( .A0(n45), .A1(n81), .B0(RX_D_VLD), .Y(n44) );
  AND3X2M U119 ( .A(RX_P_Data[1]), .B(n49), .C(RX_P_Data[5]), .Y(n35) );
  INVX2M U120 ( .A(RX_P_Data[7]), .Y(n75) );
  AO2B2X2M U121 ( .B0(ALU_OUT[15]), .B1(n17), .A0(Data[7]), .A1N(n17), .Y(n73)
         );
  AO2B2X2M U122 ( .B0(ALU_OUT[14]), .B1(n17), .A0(Data[6]), .A1N(n17), .Y(n72)
         );
  AO2B2X2M U123 ( .B0(ALU_OUT[13]), .B1(n17), .A0(Data[5]), .A1N(n17), .Y(n71)
         );
  AO2B2X2M U124 ( .B0(ALU_OUT[12]), .B1(n17), .A0(Data[4]), .A1N(n17), .Y(n70)
         );
  AO2B2X2M U125 ( .B0(ALU_OUT[11]), .B1(n17), .A0(Data[3]), .A1N(n17), .Y(n69)
         );
  AO2B2X2M U126 ( .B0(ALU_OUT[10]), .B1(n17), .A0(Data[2]), .A1N(n17), .Y(n68)
         );
  AO2B2X2M U127 ( .B0(ALU_OUT[9]), .B1(n17), .A0(Data[1]), .A1N(n17), .Y(n67)
         );
  AO2B2X2M U128 ( .B0(ALU_OUT[8]), .B1(n17), .A0(Data[0]), .A1N(n17), .Y(n66)
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n4) );
  INVX2M U13 ( .A(n18), .Y(n3) );
  NAND2X2M U14 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n6) );
  INVX2M U16 ( .A(n18), .Y(n5) );
  NAND2X2M U17 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  NAND2X2M U19 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n18), .Y(n1) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(B[1]), .Y(n8) );
  NAND2X2M U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
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
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U14 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][5] ), .Y(n21) );
  XNOR2X2M U17 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U24 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U27 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U31 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  INVX2M U39 ( .A(B[7]), .Y(n24) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(A[4]), .Y(n35) );
  INVX2M U44 ( .A(B[1]), .Y(n30) );
  INVX2M U45 ( .A(A[6]), .Y(n33) );
  INVX2M U46 ( .A(A[7]), .Y(n32) );
  INVX2M U47 ( .A(A[5]), .Y(n34) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[0]), .Y(n31) );
  INVX2M U52 ( .A(B[2]), .Y(n29) );
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
endmodule


module ALU ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_Valid );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST;
  output OUT_Valid;
  wire   N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N128,
         N129, N130, N131, N132, N133, N134, N135, N168, N169, N170, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152;
  wire   [15:0] ALU_comp;

  ALU_DW_div_uns_0 div_62 ( .a({n15, n14, n13, n12, n11, n10, n9, n8}), .b({n7, 
        n6, B[5:2], n5, B[0]}), .quotient({N135, N134, N133, N132, N131, N130, 
        N129, N128}) );
  ALU_DW01_sub_0 sub_53 ( .A({1'b0, n15, n14, n13, n12, n11, n10, n9, n8}), 
        .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), .DIFF({N110, N109, 
        N108, N107, N106, N105, N104, N103, N102}) );
  ALU_DW01_add_0 add_51 ( .A({1'b0, n15, n14, n13, n12, n11, n10, n9, n8}), 
        .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), .SUM({N101, N100, N99, 
        N98, N97, N96, N95, N94, N93}) );
  ALU_DW02_mult_0 mult_55 ( .A({n15, n14, n13, n12, n11, n10, n9, n8}), .B({n7, 
        n6, B[5:2], n5, B[0]}), .TC(1'b0), .PRODUCT({N126, N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_comp[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_comp[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_comp[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_comp[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_comp[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_comp[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_comp[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_comp[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_comp[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_comp[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_comp[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_comp[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_comp[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_comp[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_comp[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_comp[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_Valid_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_Valid) );
  BUFX2M U3 ( .A(A[7]), .Y(n15) );
  BUFX2M U4 ( .A(A[6]), .Y(n14) );
  BUFX2M U5 ( .A(A[1]), .Y(n9) );
  INVX2M U8 ( .A(n53), .Y(n140) );
  INVX2M U9 ( .A(n97), .Y(n138) );
  INVX2M U10 ( .A(n47), .Y(n137) );
  INVX2M U11 ( .A(n102), .Y(n136) );
  OAI2BB1X2M U12 ( .A0N(N125), .A1N(n35), .B0(n36), .Y(ALU_comp[14]) );
  OAI2BB1X2M U13 ( .A0N(N126), .A1N(n35), .B0(n36), .Y(ALU_comp[15]) );
  OAI2BB1X2M U14 ( .A0N(N122), .A1N(n35), .B0(n36), .Y(ALU_comp[11]) );
  OAI2BB1X2M U15 ( .A0N(N123), .A1N(n35), .B0(n36), .Y(ALU_comp[12]) );
  OAI2BB1X2M U16 ( .A0N(N124), .A1N(n35), .B0(n36), .Y(ALU_comp[13]) );
  OAI2BB1X2M U17 ( .A0N(N120), .A1N(n35), .B0(n36), .Y(ALU_comp[9]) );
  OAI2BB1X2M U18 ( .A0N(N121), .A1N(n35), .B0(n36), .Y(ALU_comp[10]) );
  OAI21X2M U19 ( .A0(n3), .A1(n112), .B0(n111), .Y(n52) );
  NOR2X2M U20 ( .A(n101), .B(n3), .Y(n53) );
  OAI2B1X2M U21 ( .A1N(n110), .A0(n101), .B0(n111), .Y(n97) );
  NAND2X2M U22 ( .A(n141), .B(n110), .Y(n47) );
  INVX2M U23 ( .A(n50), .Y(n135) );
  INVX2M U24 ( .A(n112), .Y(n141) );
  NOR2BX2M U25 ( .AN(n113), .B(n3), .Y(n41) );
  NOR2BX2M U26 ( .AN(n40), .B(n133), .Y(n35) );
  NAND2X2M U27 ( .A(n113), .B(n110), .Y(n102) );
  OAI2BB2X1M U28 ( .B0(n146), .B1(n47), .A0N(N118), .A1N(n40), .Y(n46) );
  NOR3BX2M U29 ( .AN(n4), .B(n101), .C(ALU_FUN[0]), .Y(n39) );
  NOR3BX2M U30 ( .AN(n4), .B(n139), .C(n112), .Y(n57) );
  OAI2B11X2M U31 ( .A1N(N110), .A0(n102), .B0(n140), .C0(n138), .Y(n42) );
  NOR2X2M U32 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n113) );
  NOR2X2M U33 ( .A(n139), .B(n4), .Y(n110) );
  NAND3X2M U34 ( .A(n113), .B(n139), .C(n4), .Y(n50) );
  NAND2X2M U35 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n101) );
  NAND2X2M U36 ( .A(ALU_FUN[2]), .B(n142), .Y(n112) );
  NAND2X2M U37 ( .A(Enable), .B(n42), .Y(n36) );
  INVX2M U38 ( .A(ALU_FUN[0]), .Y(n139) );
  INVX2M U39 ( .A(ALU_FUN[1]), .Y(n142) );
  NAND3X2M U40 ( .A(n113), .B(ALU_FUN[0]), .C(n4), .Y(n111) );
  OR2X2M U41 ( .A(n4), .B(ALU_FUN[0]), .Y(n3) );
  AND4X2M U42 ( .A(N170), .B(n141), .C(n4), .D(n139), .Y(n100) );
  NOR3X2M U43 ( .A(n3), .B(ALU_FUN[2]), .C(n142), .Y(n40) );
  INVX2M U44 ( .A(Enable), .Y(n133) );
  AOI31X2M U45 ( .A0(n103), .A1(n104), .A2(n105), .B0(n133), .Y(ALU_comp[0])
         );
  AOI22X1M U46 ( .A0(N102), .A1(n136), .B0(N93), .B1(n41), .Y(n103) );
  AOI222X1M U47 ( .A0(N111), .A1(n40), .B0(n53), .B1(n152), .C0(n8), .C1(n137), 
        .Y(n104) );
  AOI211X2M U48 ( .A0(n9), .A1(n57), .B0(n106), .C0(n107), .Y(n105) );
  OAI2BB1X2M U49 ( .A0N(N128), .A1N(n48), .B0(n114), .Y(n106) );
  AOI31X2M U50 ( .A0(N168), .A1(n4), .A2(n115), .B0(n100), .Y(n114) );
  NOR3X2M U51 ( .A(n142), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n115) );
  AOI31X2M U52 ( .A0(n90), .A1(n91), .A2(n92), .B0(n133), .Y(ALU_comp[1]) );
  AOI222X1M U53 ( .A0(N94), .A1(n41), .B0(N112), .B1(n40), .C0(N103), .C1(n136), .Y(n90) );
  AOI222X1M U54 ( .A0(n9), .A1(n137), .B0(n10), .B1(n57), .C0(n53), .C1(n126), 
        .Y(n91) );
  AOI211X2M U55 ( .A0(n8), .A1(n39), .B0(n93), .C0(n94), .Y(n92) );
  OAI2BB1X2M U56 ( .A0N(N129), .A1N(n48), .B0(n98), .Y(n93) );
  AOI31X2M U57 ( .A0(N169), .A1(n4), .A2(n99), .B0(n100), .Y(n98) );
  NOR3X2M U58 ( .A(n139), .B(ALU_FUN[2]), .C(n142), .Y(n99) );
  AOI31X2M U59 ( .A0(n83), .A1(n84), .A2(n85), .B0(n133), .Y(ALU_comp[2]) );
  AOI22X1M U60 ( .A0(N104), .A1(n136), .B0(N95), .B1(n41), .Y(n83) );
  AOI222X1M U61 ( .A0(N113), .A1(n40), .B0(n53), .B1(n151), .C0(n10), .C1(n137), .Y(n84) );
  AOI221XLM U62 ( .A0(n9), .A1(n39), .B0(n11), .B1(n57), .C0(n86), .Y(n85) );
  AOI31X2M U63 ( .A0(n76), .A1(n77), .A2(n78), .B0(n133), .Y(ALU_comp[3]) );
  AOI22X1M U64 ( .A0(N105), .A1(n136), .B0(N96), .B1(n41), .Y(n76) );
  AOI222X1M U65 ( .A0(N114), .A1(n40), .B0(n53), .B1(n150), .C0(n11), .C1(n137), .Y(n77) );
  AOI221XLM U66 ( .A0(n10), .A1(n39), .B0(n12), .B1(n57), .C0(n79), .Y(n78) );
  AOI31X2M U67 ( .A0(n69), .A1(n70), .A2(n71), .B0(n133), .Y(ALU_comp[4]) );
  AOI22X1M U68 ( .A0(N106), .A1(n136), .B0(N97), .B1(n41), .Y(n69) );
  AOI222X1M U69 ( .A0(N115), .A1(n40), .B0(n53), .B1(n149), .C0(n12), .C1(n137), .Y(n70) );
  AOI221XLM U70 ( .A0(n11), .A1(n39), .B0(n57), .B1(n13), .C0(n72), .Y(n71) );
  AOI31X2M U71 ( .A0(n62), .A1(n63), .A2(n64), .B0(n133), .Y(ALU_comp[5]) );
  AOI22X1M U72 ( .A0(N107), .A1(n136), .B0(N98), .B1(n41), .Y(n62) );
  AOI222X1M U73 ( .A0(N116), .A1(n40), .B0(n53), .B1(n148), .C0(n13), .C1(n137), .Y(n63) );
  AOI221XLM U74 ( .A0(n12), .A1(n39), .B0(n57), .B1(n14), .C0(n65), .Y(n64) );
  AOI31X2M U75 ( .A0(n54), .A1(n55), .A2(n56), .B0(n133), .Y(ALU_comp[6]) );
  AOI22X1M U76 ( .A0(N108), .A1(n136), .B0(N99), .B1(n41), .Y(n54) );
  AOI221XLM U77 ( .A0(n13), .A1(n39), .B0(n57), .B1(n15), .C0(n58), .Y(n56) );
  AOI222X1M U78 ( .A0(N117), .A1(n40), .B0(n53), .B1(n147), .C0(n137), .C1(n14), .Y(n55) );
  AOI31X2M U79 ( .A0(n43), .A1(n44), .A2(n45), .B0(n133), .Y(ALU_comp[7]) );
  AOI22X1M U80 ( .A0(n14), .A1(n39), .B0(n53), .B1(n146), .Y(n43) );
  AOI222X1M U81 ( .A0(n7), .A1(n134), .B0(N135), .B1(n48), .C0(n49), .C1(n143), 
        .Y(n44) );
  AOI221XLM U82 ( .A0(N109), .A1(n136), .B0(N100), .B1(n41), .C0(n46), .Y(n45)
         );
  AOI21X2M U83 ( .A0(n37), .A1(n38), .B0(n133), .Y(ALU_comp[8]) );
  AOI21X2M U84 ( .A0(N101), .A1(n41), .B0(n42), .Y(n37) );
  AOI22X1M U85 ( .A0(n15), .A1(n39), .B0(N119), .B1(n40), .Y(n38) );
  INVX2M U86 ( .A(n6), .Y(n132) );
  OAI221X1M U87 ( .A0(n10), .A1(n138), .B0(n50), .B1(n151), .C0(n140), .Y(n89)
         );
  OAI221X1M U88 ( .A0(n11), .A1(n138), .B0(n50), .B1(n150), .C0(n140), .Y(n82)
         );
  OAI221X1M U89 ( .A0(n12), .A1(n138), .B0(n50), .B1(n149), .C0(n140), .Y(n75)
         );
  OAI221X1M U90 ( .A0(n13), .A1(n138), .B0(n50), .B1(n148), .C0(n140), .Y(n68)
         );
  OAI221X1M U91 ( .A0(n14), .A1(n138), .B0(n50), .B1(n147), .C0(n140), .Y(n61)
         );
  OAI221X1M U92 ( .A0(n15), .A1(n138), .B0(n146), .B1(n50), .C0(n140), .Y(n49)
         );
  OAI2B2X1M U93 ( .A1N(n5), .A0(n95), .B0(n5), .B1(n96), .Y(n94) );
  AOI221XLM U94 ( .A0(n135), .A1(n126), .B0(n9), .B1(n52), .C0(n137), .Y(n95)
         );
  AOI221XLM U95 ( .A0(n9), .A1(n135), .B0(n97), .B1(n126), .C0(n53), .Y(n96)
         );
  INVX2M U96 ( .A(n16), .Y(n128) );
  INVX2M U97 ( .A(n27), .Y(n130) );
  OAI21X2M U98 ( .A0(n59), .A1(n132), .B0(n60), .Y(n58) );
  AOI221XLM U99 ( .A0(n135), .A1(n147), .B0(n14), .B1(n52), .C0(n137), .Y(n59)
         );
  AOI22X1M U100 ( .A0(N134), .A1(n48), .B0(n61), .B1(n132), .Y(n60) );
  INVX2M U101 ( .A(n51), .Y(n134) );
  AOI221XLM U102 ( .A0(n52), .A1(n15), .B0(n146), .B1(n135), .C0(n137), .Y(n51) );
  BUFX2M U103 ( .A(ALU_FUN[3]), .Y(n4) );
  INVX2M U104 ( .A(n9), .Y(n126) );
  INVX2M U105 ( .A(n15), .Y(n146) );
  INVX2M U106 ( .A(n14), .Y(n147) );
  INVX2M U107 ( .A(n8), .Y(n152) );
  INVX2M U108 ( .A(n10), .Y(n151) );
  INVX2M U109 ( .A(n11), .Y(n150) );
  INVX2M U110 ( .A(n13), .Y(n148) );
  INVX2M U111 ( .A(n12), .Y(n149) );
  INVX2M U112 ( .A(n7), .Y(n143) );
  BUFX2M U113 ( .A(B[6]), .Y(n6) );
  BUFX2M U114 ( .A(B[7]), .Y(n7) );
  BUFX2M U115 ( .A(B[1]), .Y(n5) );
  BUFX2M U116 ( .A(A[5]), .Y(n13) );
  OAI21X2M U117 ( .A0(n87), .A1(n129), .B0(n88), .Y(n86) );
  AOI221XLM U118 ( .A0(n135), .A1(n151), .B0(n10), .B1(n52), .C0(n137), .Y(n87) );
  AOI22X1M U119 ( .A0(N130), .A1(n48), .B0(n89), .B1(n129), .Y(n88) );
  BUFX2M U120 ( .A(A[4]), .Y(n12) );
  BUFX2M U121 ( .A(A[3]), .Y(n11) );
  OAI21X2M U122 ( .A0(n80), .A1(n131), .B0(n81), .Y(n79) );
  AOI221XLM U123 ( .A0(n135), .A1(n150), .B0(n11), .B1(n52), .C0(n137), .Y(n80) );
  AOI22X1M U124 ( .A0(N131), .A1(n48), .B0(n82), .B1(n131), .Y(n81) );
  BUFX2M U125 ( .A(A[2]), .Y(n10) );
  OAI21X2M U126 ( .A0(n73), .A1(n145), .B0(n74), .Y(n72) );
  AOI221XLM U127 ( .A0(n135), .A1(n149), .B0(n12), .B1(n52), .C0(n137), .Y(n73) );
  AOI22X1M U128 ( .A0(N132), .A1(n48), .B0(n75), .B1(n145), .Y(n74) );
  INVX2M U129 ( .A(B[4]), .Y(n145) );
  BUFX2M U130 ( .A(A[0]), .Y(n8) );
  OAI21X2M U131 ( .A0(n66), .A1(n144), .B0(n67), .Y(n65) );
  AOI221XLM U132 ( .A0(n135), .A1(n148), .B0(n13), .B1(n52), .C0(n137), .Y(n66) );
  AOI22X1M U133 ( .A0(N133), .A1(n48), .B0(n68), .B1(n144), .Y(n67) );
  INVX2M U134 ( .A(B[5]), .Y(n144) );
  OAI2B2X1M U135 ( .A1N(B[0]), .A0(n108), .B0(B[0]), .B1(n109), .Y(n107) );
  AOI221XLM U136 ( .A0(n135), .A1(n152), .B0(n8), .B1(n52), .C0(n137), .Y(n108) );
  AOI221XLM U137 ( .A0(n8), .A1(n135), .B0(n97), .B1(n152), .C0(n53), .Y(n109)
         );
  INVX2M U138 ( .A(B[0]), .Y(n127) );
  INVX2M U139 ( .A(B[2]), .Y(n129) );
  AND3X2M U140 ( .A(n110), .B(ALU_FUN[1]), .C(n116), .Y(n48) );
  AOI21X2M U141 ( .A0(n117), .A1(n118), .B0(ALU_FUN[2]), .Y(n116) );
  NOR4X1M U142 ( .A(n7), .B(n6), .C(B[5]), .D(B[4]), .Y(n118) );
  NOR4X1M U143 ( .A(B[3]), .B(B[2]), .C(n5), .D(B[0]), .Y(n117) );
  INVX2M U144 ( .A(B[3]), .Y(n131) );
  NOR2X1M U145 ( .A(n146), .B(n7), .Y(n122) );
  NAND2BX1M U146 ( .AN(B[4]), .B(n12), .Y(n31) );
  NAND2BX1M U147 ( .AN(n12), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U148 ( .A(n31), .B(n20), .Y(n33) );
  NOR2X1M U149 ( .A(n131), .B(n11), .Y(n28) );
  NOR2X1M U150 ( .A(n129), .B(n10), .Y(n19) );
  NOR2X1M U151 ( .A(n127), .B(n8), .Y(n16) );
  CLKNAND2X2M U152 ( .A(n10), .B(n129), .Y(n30) );
  NAND2BX1M U153 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U154 ( .A0(n16), .A1(n126), .B0(n5), .Y(n17) );
  AOI211X1M U155 ( .A0(n9), .A1(n128), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U156 ( .A(n11), .B(n131), .Y(n29) );
  OAI31X1M U157 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U158 ( .AN(n13), .B(B[5]), .Y(n120) );
  OAI211X1M U159 ( .A0(n33), .A1(n21), .B0(n20), .C0(n120), .Y(n22) );
  NAND2BX1M U160 ( .AN(B[5]), .B(n13), .Y(n32) );
  XNOR2X1M U161 ( .A(n14), .B(n6), .Y(n119) );
  AOI32X1M U162 ( .A0(n22), .A1(n32), .A2(n119), .B0(n6), .B1(n147), .Y(n23)
         );
  CLKNAND2X2M U163 ( .A(n7), .B(n146), .Y(n123) );
  OAI21X1M U164 ( .A0(n122), .A1(n23), .B0(n123), .Y(N170) );
  CLKNAND2X2M U165 ( .A(n8), .B(n127), .Y(n26) );
  OA21X1M U166 ( .A0(n26), .A1(n126), .B0(n5), .Y(n24) );
  AOI211X1M U167 ( .A0(n26), .A1(n126), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U168 ( .A0(n130), .A1(n30), .A2(n29), .B0(n28), .Y(n34) );
  OAI2B11X1M U169 ( .A1N(n34), .A0(n33), .B0(n32), .C0(n31), .Y(n121) );
  AOI32X1M U170 ( .A0(n121), .A1(n120), .A2(n119), .B0(n14), .B1(n132), .Y(
        n124) );
  AOI2B1X1M U171 ( .A1N(n124), .A0(n123), .B0(n122), .Y(n125) );
  CLKINVX1M U172 ( .A(n125), .Y(N169) );
  NOR2X1M U173 ( .A(N170), .B(N169), .Y(N168) );
endmodule


module Clock_Gating ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX2M U0_clk_gate ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module Reg_File ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
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
         N42, N43, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \mem_reg[13][7]  ( .D(n159), .CK(CLK), .RN(n212), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n158), .CK(CLK), .RN(n212), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n157), .CK(CLK), .RN(n211), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n156), .CK(CLK), .RN(n211), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n155), .CK(CLK), .RN(n211), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n154), .CK(CLK), .RN(n211), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n153), .CK(CLK), .RN(n211), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n152), .CK(CLK), .RN(n211), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[9][7]  ( .D(n127), .CK(CLK), .RN(n209), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n126), .CK(CLK), .RN(n209), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n125), .CK(CLK), .RN(n209), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n124), .CK(CLK), .RN(n209), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n123), .CK(CLK), .RN(n209), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n122), .CK(CLK), .RN(n209), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n121), .CK(CLK), .RN(n209), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n120), .CK(CLK), .RN(n209), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n95), .CK(CLK), .RN(n207), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n94), .CK(CLK), .RN(n207), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n93), .CK(CLK), .RN(n207), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n92), .CK(CLK), .RN(n207), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n91), .CK(CLK), .RN(n207), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n90), .CK(CLK), .RN(n207), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n89), .CK(CLK), .RN(n207), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n88), .CK(CLK), .RN(n207), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[15][7]  ( .D(n175), .CK(CLK), .RN(n204), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n174), .CK(CLK), .RN(n213), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n173), .CK(CLK), .RN(n213), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n172), .CK(CLK), .RN(n212), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n171), .CK(CLK), .RN(n212), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n170), .CK(CLK), .RN(n212), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n169), .CK(CLK), .RN(n212), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n168), .CK(CLK), .RN(n212), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[11][7]  ( .D(n143), .CK(CLK), .RN(n211), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n142), .CK(CLK), .RN(n210), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n141), .CK(CLK), .RN(n210), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n140), .CK(CLK), .RN(n210), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n139), .CK(CLK), .RN(n210), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n138), .CK(CLK), .RN(n210), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n137), .CK(CLK), .RN(n210), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n136), .CK(CLK), .RN(n210), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n111), .CK(CLK), .RN(n208), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n110), .CK(CLK), .RN(n208), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n109), .CK(CLK), .RN(n208), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n108), .CK(CLK), .RN(n208), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n107), .CK(CLK), .RN(n208), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n106), .CK(CLK), .RN(n208), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n105), .CK(CLK), .RN(n208), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n104), .CK(CLK), .RN(n208), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[14][7]  ( .D(n167), .CK(CLK), .RN(n212), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n166), .CK(CLK), .RN(n212), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n165), .CK(CLK), .RN(n212), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n164), .CK(CLK), .RN(n212), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n163), .CK(CLK), .RN(n212), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n162), .CK(CLK), .RN(n212), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n161), .CK(CLK), .RN(n212), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n160), .CK(CLK), .RN(n212), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[10][7]  ( .D(n135), .CK(CLK), .RN(n210), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n134), .CK(CLK), .RN(n210), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n133), .CK(CLK), .RN(n210), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n132), .CK(CLK), .RN(n210), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n131), .CK(CLK), .RN(n210), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n130), .CK(CLK), .RN(n210), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n129), .CK(CLK), .RN(n210), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n128), .CK(CLK), .RN(n210), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n103), .CK(CLK), .RN(n208), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n102), .CK(CLK), .RN(n208), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n101), .CK(CLK), .RN(n208), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n100), .CK(CLK), .RN(n208), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n99), .CK(CLK), .RN(n208), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n98), .CK(CLK), .RN(n207), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n97), .CK(CLK), .RN(n207), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n96), .CK(CLK), .RN(n207), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[12][7]  ( .D(n151), .CK(CLK), .RN(n211), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n150), .CK(CLK), .RN(n211), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n149), .CK(CLK), .RN(n211), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n148), .CK(CLK), .RN(n211), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n147), .CK(CLK), .RN(n211), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n146), .CK(CLK), .RN(n211), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n145), .CK(CLK), .RN(n211), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n144), .CK(CLK), .RN(n211), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[8][7]  ( .D(n119), .CK(CLK), .RN(n209), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n118), .CK(CLK), .RN(n209), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n117), .CK(CLK), .RN(n209), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n116), .CK(CLK), .RN(n209), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n115), .CK(CLK), .RN(n209), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n114), .CK(CLK), .RN(n209), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n113), .CK(CLK), .RN(n209), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n112), .CK(CLK), .RN(n208), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n87), .CK(CLK), .RN(n207), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n86), .CK(CLK), .RN(n207), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n85), .CK(CLK), .RN(n207), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n84), .CK(CLK), .RN(n207), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n83), .CK(CLK), .RN(n206), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n82), .CK(CLK), .RN(n206), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n81), .CK(CLK), .RN(n206), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n80), .CK(CLK), .RN(n206), .Q(\mem[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n204), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n204), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n204), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n204), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n204), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n204), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n204), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n208), .Q(RdData[0]) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n79), .CK(CLK), .RN(n206), .Q(REG3[7]) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n74), .CK(CLK), .RN(n206), .Q(REG3[2]) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n75), .CK(CLK), .RN(n206), .Q(REG3[3]) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n78), .CK(CLK), .RN(n206), .Q(REG3[6]) );
  DFFSQX2M \mem_reg[2][0]  ( .D(n64), .CK(CLK), .SN(n204), .Q(REG2[0]) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n76), .CK(CLK), .RN(n206), .Q(REG3[4]) );
  DFFSQX2M \mem_reg[3][5]  ( .D(n77), .CK(CLK), .SN(n204), .Q(REG3[5]) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n65), .CK(CLK), .RN(n205), .Q(REG2[1]) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n72), .CK(CLK), .RN(n206), .Q(REG3[0]) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n73), .CK(CLK), .RN(n206), .Q(REG3[1]) );
  DFFSQX2M \mem_reg[2][7]  ( .D(n71), .CK(CLK), .SN(n204), .Q(REG2[7]) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n68), .CK(CLK), .RN(n206), .Q(REG2[4]) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n67), .CK(CLK), .RN(n205), .Q(REG2[3]) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n66), .CK(CLK), .RN(n206), .Q(REG2[2]) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[5]) );
  DFFRQX2M RdData_Valid_reg ( .D(n219), .CK(CLK), .RN(n204), .Q(RdData_Valid)
         );
  DFFRQX2M \mem_reg[0][1]  ( .D(n49), .CK(CLK), .RN(n204), .Q(REG0[1]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n48), .CK(CLK), .RN(n204), .Q(REG0[0]) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n50), .CK(CLK), .RN(n204), .Q(REG0[2]) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[3]) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n52), .CK(CLK), .RN(n205), .Q(REG0[4]) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n53), .CK(CLK), .RN(n205), .Q(REG0[5]) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n55), .CK(CLK), .RN(n205), .Q(REG0[7]) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n54), .CK(CLK), .RN(n205), .Q(REG0[6]) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n63), .CK(CLK), .RN(n205), .Q(REG1[7]) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n62), .CK(CLK), .RN(n205), .Q(REG1[6]) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n57), .CK(CLK), .RN(n205), .Q(REG1[1]) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n60), .CK(CLK), .RN(n205), .Q(REG1[4]) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n61), .CK(CLK), .RN(n205), .Q(REG1[5]) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n70), .CK(CLK), .RN(n206), .Q(REG2[6]) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n58), .CK(CLK), .RN(n205), .Q(REG1[2]) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n59), .CK(CLK), .RN(n205), .Q(REG1[3]) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n56), .CK(CLK), .RN(n205), .Q(REG1[0]) );
  NOR2X2M U3 ( .A(n203), .B(N13), .Y(n19) );
  NOR2X2M U4 ( .A(n198), .B(N13), .Y(n14) );
  NOR2BX2M U5 ( .AN(N13), .B(n198), .Y(n22) );
  NOR2BX2M U6 ( .AN(N13), .B(n203), .Y(n25) );
  INVX2M U7 ( .A(WrData[4]), .Y(n225) );
  INVX2M U8 ( .A(WrData[5]), .Y(n226) );
  INVX2M U9 ( .A(WrData[6]), .Y(n227) );
  INVX2M U10 ( .A(n199), .Y(n200) );
  INVX2M U11 ( .A(n197), .Y(n198) );
  INVX2M U12 ( .A(n199), .Y(n201) );
  BUFX2M U13 ( .A(n202), .Y(n199) );
  BUFX2M U14 ( .A(n203), .Y(n197) );
  INVX2M U15 ( .A(n12), .Y(n219) );
  NOR2BX2M U16 ( .AN(n26), .B(N11), .Y(n15) );
  NOR2BX2M U17 ( .AN(n26), .B(n202), .Y(n17) );
  NOR2BX2M U18 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U19 ( .AN(n38), .B(n202), .Y(n32) );
  NAND2X2M U20 ( .A(n17), .B(n14), .Y(n16) );
  NAND2X2M U21 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U22 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U23 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U24 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U25 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U26 ( .A(n30), .B(n22), .Y(n35) );
  NAND2X2M U27 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U28 ( .A(n30), .B(n25), .Y(n37) );
  NAND2X2M U29 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U30 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U31 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U32 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U33 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U34 ( .A(n25), .B(n17), .Y(n27) );
  NAND2X2M U35 ( .A(n14), .B(n15), .Y(n13) );
  NOR2BX2M U36 ( .AN(WrEn), .B(RdEn), .Y(n28) );
  NAND2BX2M U37 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  BUFX2M U38 ( .A(n218), .Y(n204) );
  BUFX2M U39 ( .A(n218), .Y(n205) );
  BUFX2M U40 ( .A(n217), .Y(n206) );
  BUFX2M U41 ( .A(n217), .Y(n207) );
  BUFX2M U42 ( .A(n216), .Y(n208) );
  BUFX2M U43 ( .A(n216), .Y(n209) );
  BUFX2M U44 ( .A(n215), .Y(n210) );
  BUFX2M U45 ( .A(n215), .Y(n211) );
  BUFX2M U46 ( .A(n214), .Y(n212) );
  BUFX2M U47 ( .A(n214), .Y(n213) );
  NOR2BX2M U48 ( .AN(n28), .B(N14), .Y(n26) );
  AND2X2M U49 ( .A(N14), .B(n28), .Y(n38) );
  INVX2M U50 ( .A(N11), .Y(n202) );
  INVX2M U51 ( .A(N12), .Y(n203) );
  INVX2M U52 ( .A(WrData[0]), .Y(n224) );
  INVX2M U53 ( .A(WrData[1]), .Y(n223) );
  INVX2M U54 ( .A(WrData[2]), .Y(n222) );
  INVX2M U55 ( .A(WrData[3]), .Y(n221) );
  INVX2M U56 ( .A(WrData[7]), .Y(n220) );
  BUFX2M U57 ( .A(RST), .Y(n217) );
  BUFX2M U58 ( .A(RST), .Y(n216) );
  BUFX2M U59 ( .A(RST), .Y(n215) );
  BUFX2M U60 ( .A(RST), .Y(n214) );
  BUFX2M U61 ( .A(RST), .Y(n218) );
  OAI2BB2X1M U62 ( .B0(n13), .B1(n224), .A0N(REG0[0]), .A1N(n13), .Y(n48) );
  OAI2BB2X1M U63 ( .B0(n13), .B1(n223), .A0N(REG0[1]), .A1N(n13), .Y(n49) );
  OAI2BB2X1M U64 ( .B0(n13), .B1(n222), .A0N(REG0[2]), .A1N(n13), .Y(n50) );
  OAI2BB2X1M U65 ( .B0(n13), .B1(n221), .A0N(REG0[3]), .A1N(n13), .Y(n51) );
  OAI2BB2X1M U66 ( .B0(n13), .B1(n225), .A0N(REG0[4]), .A1N(n13), .Y(n52) );
  OAI2BB2X1M U67 ( .B0(n13), .B1(n226), .A0N(REG0[5]), .A1N(n13), .Y(n53) );
  OAI2BB2X1M U68 ( .B0(n13), .B1(n227), .A0N(REG0[6]), .A1N(n13), .Y(n54) );
  OAI2BB2X1M U69 ( .B0(n13), .B1(n220), .A0N(REG0[7]), .A1N(n13), .Y(n55) );
  OAI2BB2X1M U70 ( .B0(n224), .B1(n16), .A0N(REG1[0]), .A1N(n16), .Y(n56) );
  OAI2BB2X1M U71 ( .B0(n223), .B1(n16), .A0N(REG1[1]), .A1N(n16), .Y(n57) );
  OAI2BB2X1M U72 ( .B0(n222), .B1(n16), .A0N(REG1[2]), .A1N(n16), .Y(n58) );
  OAI2BB2X1M U73 ( .B0(n221), .B1(n16), .A0N(REG1[3]), .A1N(n16), .Y(n59) );
  OAI2BB2X1M U74 ( .B0(n225), .B1(n16), .A0N(REG1[4]), .A1N(n16), .Y(n60) );
  OAI2BB2X1M U75 ( .B0(n226), .B1(n16), .A0N(REG1[5]), .A1N(n16), .Y(n61) );
  OAI2BB2X1M U76 ( .B0(n227), .B1(n16), .A0N(REG1[6]), .A1N(n16), .Y(n62) );
  OAI2BB2X1M U77 ( .B0(n220), .B1(n16), .A0N(REG1[7]), .A1N(n16), .Y(n63) );
  OAI2BB2X1M U78 ( .B0(n224), .B1(n21), .A0N(\mem[4][0] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U79 ( .B0(n223), .B1(n21), .A0N(\mem[4][1] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U80 ( .B0(n222), .B1(n21), .A0N(\mem[4][2] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U81 ( .B0(n221), .B1(n21), .A0N(\mem[4][3] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U82 ( .B0(n225), .B1(n21), .A0N(\mem[4][4] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U83 ( .B0(n226), .B1(n21), .A0N(\mem[4][5] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U84 ( .B0(n227), .B1(n21), .A0N(\mem[4][6] ), .A1N(n21), .Y(n86)
         );
  OAI2BB2X1M U85 ( .B0(n220), .B1(n21), .A0N(\mem[4][7] ), .A1N(n21), .Y(n87)
         );
  OAI2BB2X1M U86 ( .B0(n224), .B1(n23), .A0N(\mem[5][0] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U87 ( .B0(n223), .B1(n23), .A0N(\mem[5][1] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U88 ( .B0(n222), .B1(n23), .A0N(\mem[5][2] ), .A1N(n23), .Y(n90)
         );
  OAI2BB2X1M U89 ( .B0(n221), .B1(n23), .A0N(\mem[5][3] ), .A1N(n23), .Y(n91)
         );
  OAI2BB2X1M U90 ( .B0(n225), .B1(n23), .A0N(\mem[5][4] ), .A1N(n23), .Y(n92)
         );
  OAI2BB2X1M U91 ( .B0(n226), .B1(n23), .A0N(\mem[5][5] ), .A1N(n23), .Y(n93)
         );
  OAI2BB2X1M U92 ( .B0(n227), .B1(n23), .A0N(\mem[5][6] ), .A1N(n23), .Y(n94)
         );
  OAI2BB2X1M U93 ( .B0(n220), .B1(n23), .A0N(\mem[5][7] ), .A1N(n23), .Y(n95)
         );
  OAI2BB2X1M U94 ( .B0(n224), .B1(n24), .A0N(\mem[6][0] ), .A1N(n24), .Y(n96)
         );
  OAI2BB2X1M U95 ( .B0(n223), .B1(n24), .A0N(\mem[6][1] ), .A1N(n24), .Y(n97)
         );
  OAI2BB2X1M U96 ( .B0(n222), .B1(n24), .A0N(\mem[6][2] ), .A1N(n24), .Y(n98)
         );
  OAI2BB2X1M U97 ( .B0(n221), .B1(n24), .A0N(\mem[6][3] ), .A1N(n24), .Y(n99)
         );
  OAI2BB2X1M U98 ( .B0(n225), .B1(n24), .A0N(\mem[6][4] ), .A1N(n24), .Y(n100)
         );
  OAI2BB2X1M U99 ( .B0(n226), .B1(n24), .A0N(\mem[6][5] ), .A1N(n24), .Y(n101)
         );
  OAI2BB2X1M U100 ( .B0(n227), .B1(n24), .A0N(\mem[6][6] ), .A1N(n24), .Y(n102) );
  OAI2BB2X1M U101 ( .B0(n220), .B1(n24), .A0N(\mem[6][7] ), .A1N(n24), .Y(n103) );
  OAI2BB2X1M U102 ( .B0(n224), .B1(n27), .A0N(\mem[7][0] ), .A1N(n27), .Y(n104) );
  OAI2BB2X1M U103 ( .B0(n223), .B1(n27), .A0N(\mem[7][1] ), .A1N(n27), .Y(n105) );
  OAI2BB2X1M U104 ( .B0(n222), .B1(n27), .A0N(\mem[7][2] ), .A1N(n27), .Y(n106) );
  OAI2BB2X1M U105 ( .B0(n221), .B1(n27), .A0N(\mem[7][3] ), .A1N(n27), .Y(n107) );
  OAI2BB2X1M U106 ( .B0(n225), .B1(n27), .A0N(\mem[7][4] ), .A1N(n27), .Y(n108) );
  OAI2BB2X1M U107 ( .B0(n226), .B1(n27), .A0N(\mem[7][5] ), .A1N(n27), .Y(n109) );
  OAI2BB2X1M U108 ( .B0(n227), .B1(n27), .A0N(\mem[7][6] ), .A1N(n27), .Y(n110) );
  OAI2BB2X1M U109 ( .B0(n220), .B1(n27), .A0N(\mem[7][7] ), .A1N(n27), .Y(n111) );
  OAI2BB2X1M U110 ( .B0(n223), .B1(n18), .A0N(REG2[1]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U111 ( .B0(n222), .B1(n18), .A0N(REG2[2]), .A1N(n18), .Y(n66) );
  OAI2BB2X1M U112 ( .B0(n221), .B1(n18), .A0N(REG2[3]), .A1N(n18), .Y(n67) );
  OAI2BB2X1M U113 ( .B0(n225), .B1(n18), .A0N(REG2[4]), .A1N(n18), .Y(n68) );
  OAI2BB2X1M U114 ( .B0(n226), .B1(n18), .A0N(REG2[5]), .A1N(n18), .Y(n69) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n18), .A0N(REG2[6]), .A1N(n18), .Y(n70) );
  OAI2BB2X1M U116 ( .B0(n224), .B1(n20), .A0N(REG3[0]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U117 ( .B0(n223), .B1(n20), .A0N(REG3[1]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U118 ( .B0(n222), .B1(n20), .A0N(REG3[2]), .A1N(n20), .Y(n74) );
  OAI2BB2X1M U119 ( .B0(n221), .B1(n20), .A0N(REG3[3]), .A1N(n20), .Y(n75) );
  OAI2BB2X1M U120 ( .B0(n225), .B1(n20), .A0N(REG3[4]), .A1N(n20), .Y(n76) );
  OAI2BB2X1M U121 ( .B0(n227), .B1(n20), .A0N(REG3[6]), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U122 ( .B0(n220), .B1(n20), .A0N(REG3[7]), .A1N(n20), .Y(n79) );
  OAI2BB2X1M U123 ( .B0(n224), .B1(n29), .A0N(\mem[8][0] ), .A1N(n29), .Y(n112) );
  OAI2BB2X1M U124 ( .B0(n223), .B1(n29), .A0N(\mem[8][1] ), .A1N(n29), .Y(n113) );
  OAI2BB2X1M U125 ( .B0(n222), .B1(n29), .A0N(\mem[8][2] ), .A1N(n29), .Y(n114) );
  OAI2BB2X1M U126 ( .B0(n221), .B1(n29), .A0N(\mem[8][3] ), .A1N(n29), .Y(n115) );
  OAI2BB2X1M U127 ( .B0(n225), .B1(n29), .A0N(\mem[8][4] ), .A1N(n29), .Y(n116) );
  OAI2BB2X1M U128 ( .B0(n226), .B1(n29), .A0N(\mem[8][5] ), .A1N(n29), .Y(n117) );
  OAI2BB2X1M U129 ( .B0(n227), .B1(n29), .A0N(\mem[8][6] ), .A1N(n29), .Y(n118) );
  OAI2BB2X1M U130 ( .B0(n220), .B1(n29), .A0N(\mem[8][7] ), .A1N(n29), .Y(n119) );
  OAI2BB2X1M U131 ( .B0(n224), .B1(n31), .A0N(\mem[9][0] ), .A1N(n31), .Y(n120) );
  OAI2BB2X1M U132 ( .B0(n223), .B1(n31), .A0N(\mem[9][1] ), .A1N(n31), .Y(n121) );
  OAI2BB2X1M U133 ( .B0(n222), .B1(n31), .A0N(\mem[9][2] ), .A1N(n31), .Y(n122) );
  OAI2BB2X1M U134 ( .B0(n221), .B1(n31), .A0N(\mem[9][3] ), .A1N(n31), .Y(n123) );
  OAI2BB2X1M U135 ( .B0(n225), .B1(n31), .A0N(\mem[9][4] ), .A1N(n31), .Y(n124) );
  OAI2BB2X1M U136 ( .B0(n226), .B1(n31), .A0N(\mem[9][5] ), .A1N(n31), .Y(n125) );
  OAI2BB2X1M U137 ( .B0(n227), .B1(n31), .A0N(\mem[9][6] ), .A1N(n31), .Y(n126) );
  OAI2BB2X1M U138 ( .B0(n220), .B1(n31), .A0N(\mem[9][7] ), .A1N(n31), .Y(n127) );
  OAI2BB2X1M U139 ( .B0(n224), .B1(n33), .A0N(\mem[10][0] ), .A1N(n33), .Y(
        n128) );
  OAI2BB2X1M U140 ( .B0(n223), .B1(n33), .A0N(\mem[10][1] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U141 ( .B0(n222), .B1(n33), .A0N(\mem[10][2] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U142 ( .B0(n221), .B1(n33), .A0N(\mem[10][3] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U143 ( .B0(n225), .B1(n33), .A0N(\mem[10][4] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U144 ( .B0(n226), .B1(n33), .A0N(\mem[10][5] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U145 ( .B0(n227), .B1(n33), .A0N(\mem[10][6] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U146 ( .B0(n220), .B1(n33), .A0N(\mem[10][7] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U147 ( .B0(n224), .B1(n34), .A0N(\mem[11][0] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U148 ( .B0(n223), .B1(n34), .A0N(\mem[11][1] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U149 ( .B0(n222), .B1(n34), .A0N(\mem[11][2] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U150 ( .B0(n221), .B1(n34), .A0N(\mem[11][3] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U151 ( .B0(n225), .B1(n34), .A0N(\mem[11][4] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U152 ( .B0(n226), .B1(n34), .A0N(\mem[11][5] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U153 ( .B0(n227), .B1(n34), .A0N(\mem[11][6] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U154 ( .B0(n220), .B1(n34), .A0N(\mem[11][7] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U155 ( .B0(n224), .B1(n35), .A0N(\mem[12][0] ), .A1N(n35), .Y(
        n144) );
  OAI2BB2X1M U156 ( .B0(n223), .B1(n35), .A0N(\mem[12][1] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U157 ( .B0(n222), .B1(n35), .A0N(\mem[12][2] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U158 ( .B0(n221), .B1(n35), .A0N(\mem[12][3] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U159 ( .B0(n225), .B1(n35), .A0N(\mem[12][4] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U160 ( .B0(n226), .B1(n35), .A0N(\mem[12][5] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U161 ( .B0(n227), .B1(n35), .A0N(\mem[12][6] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U162 ( .B0(n220), .B1(n35), .A0N(\mem[12][7] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U163 ( .B0(n224), .B1(n36), .A0N(\mem[13][0] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U164 ( .B0(n223), .B1(n36), .A0N(\mem[13][1] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U165 ( .B0(n222), .B1(n36), .A0N(\mem[13][2] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U166 ( .B0(n221), .B1(n36), .A0N(\mem[13][3] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U167 ( .B0(n225), .B1(n36), .A0N(\mem[13][4] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U168 ( .B0(n226), .B1(n36), .A0N(\mem[13][5] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U169 ( .B0(n227), .B1(n36), .A0N(\mem[13][6] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U170 ( .B0(n220), .B1(n36), .A0N(\mem[13][7] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U171 ( .B0(n224), .B1(n37), .A0N(\mem[14][0] ), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U172 ( .B0(n223), .B1(n37), .A0N(\mem[14][1] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U173 ( .B0(n222), .B1(n37), .A0N(\mem[14][2] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U174 ( .B0(n221), .B1(n37), .A0N(\mem[14][3] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U175 ( .B0(n225), .B1(n37), .A0N(\mem[14][4] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U176 ( .B0(n226), .B1(n37), .A0N(\mem[14][5] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U177 ( .B0(n227), .B1(n37), .A0N(\mem[14][6] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U178 ( .B0(n220), .B1(n37), .A0N(\mem[14][7] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U179 ( .B0(n224), .B1(n39), .A0N(\mem[15][0] ), .A1N(n39), .Y(
        n168) );
  OAI2BB2X1M U180 ( .B0(n223), .B1(n39), .A0N(\mem[15][1] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U181 ( .B0(n222), .B1(n39), .A0N(\mem[15][2] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U182 ( .B0(n221), .B1(n39), .A0N(\mem[15][3] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U183 ( .B0(n225), .B1(n39), .A0N(\mem[15][4] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U184 ( .B0(n226), .B1(n39), .A0N(\mem[15][5] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U185 ( .B0(n227), .B1(n39), .A0N(\mem[15][6] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U186 ( .B0(n220), .B1(n39), .A0N(\mem[15][7] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U187 ( .B0(n224), .B1(n18), .A0N(REG2[0]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U188 ( .B0(n220), .B1(n18), .A0N(REG2[7]), .A1N(n18), .Y(n71) );
  OAI2BB2X1M U189 ( .B0(n226), .B1(n20), .A0N(REG3[5]), .A1N(n20), .Y(n77) );
  AO22X1M U190 ( .A0(N43), .A1(n219), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U191 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U192 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n198), .Y(n4) );
  MX4X1M U193 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N11), .S1(n198), .Y(n2) );
  AO22X1M U194 ( .A0(N42), .A1(n219), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U195 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U196 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N11), .S1(n198), .Y(n6) );
  MX4X1M U197 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n201), .S1(n198), .Y(n5) );
  AO22X1M U198 ( .A0(N41), .A1(n219), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U199 ( .A(n176), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41) );
  MX4X1M U200 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n200), 
        .S1(N12), .Y(n176) );
  MX4X1M U201 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n200), .S1(N12), .Y(n10) );
  AO22X1M U202 ( .A0(N40), .A1(n219), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U203 ( .A(n180), .B(n178), .C(n179), .D(n177), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U204 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n200), 
        .S1(N12), .Y(n180) );
  MX4X1M U205 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n200), .S1(N12), .Y(n178) );
  AO22X1M U206 ( .A0(N39), .A1(n219), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U207 ( .A(n184), .B(n182), .C(n183), .D(n181), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U208 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n201), 
        .S1(N12), .Y(n184) );
  MX4X1M U209 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n200), .S1(N12), .Y(n182) );
  AO22X1M U210 ( .A0(N38), .A1(n219), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U211 ( .A(n188), .B(n186), .C(n187), .D(n185), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U212 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n201), 
        .S1(N12), .Y(n188) );
  MX4X1M U213 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n201), .S1(N12), .Y(n186) );
  AO22X1M U214 ( .A0(N37), .A1(n219), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U215 ( .A(n192), .B(n190), .C(n191), .D(n189), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U216 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n201), 
        .S1(N12), .Y(n192) );
  MX4X1M U217 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n201), .S1(N12), .Y(n190) );
  AO22X1M U218 ( .A0(N36), .A1(n219), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U219 ( .A(n196), .B(n194), .C(n195), .D(n193), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U220 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n201), 
        .S1(N12), .Y(n196) );
  MX4X1M U221 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n201), .S1(N12), .Y(n194) );
  MX4X1M U222 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n200), 
        .S1(n198), .Y(n8) );
  MX4X1M U223 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N11), .S1(n198), .Y(n3) );
  MX4X1M U224 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n200), .S1(n198), .Y(n7) );
  MX4X1M U225 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n200), .S1(N12), .Y(n11) );
  MX4X1M U226 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n200), .S1(N12), .Y(n179) );
  MX4X1M U227 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n200), .S1(N12), .Y(n183) );
  MX4X1M U228 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n201), .S1(N12), .Y(n187) );
  MX4X1M U229 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n201), .S1(n198), .Y(n191) );
  MX4X1M U230 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n201), .S1(N12), .Y(n195) );
  MX4X1M U231 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n200), .S1(n198), .Y(n1) );
  MX4X1M U232 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n200), .S1(n198), .Y(n9) );
  MX4X1M U233 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n200), .S1(N12), .Y(n177) );
  MX4X1M U234 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n200), .S1(N12), .Y(n181) );
  MX4X1M U235 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n201), .S1(n198), .Y(n185) );
  MX4X1M U236 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n201), .S1(n198), .Y(n189) );
  MX4X1M U237 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n201), .S1(n198), .Y(n193) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \Sync[0] ;

  DFFRQX2M \Sync_reg[1]  ( .D(\Sync[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \Sync_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\Sync[0] ) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \Sync[0] ;

  DFFRQX2M \Sync_reg[1]  ( .D(\Sync[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \Sync_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\Sync[0] ) );
endmodule


module DATA_SYNC ( unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] Sync_en;

  DFFRQX2M pulse_reg_reg ( .D(Sync_en[1]), .CK(CLK), .RN(RST), .Q(pulse_reg)
         );
  DFFRQX2M \Sync_en_reg[1]  ( .D(Sync_en[0]), .CK(CLK), .RN(RST), .Q(
        Sync_en[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \Sync_en_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        Sync_en[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_reg), .B(Sync_en[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module Prescale_Mux ( sel, ratio );
  input [5:0] sel;
  output [7:0] ratio;
  wire   n1, n2, n3;

  INVX2M U3 ( .A(1'b1), .Y(ratio[3]) );
  INVX2M U5 ( .A(1'b1), .Y(ratio[4]) );
  INVX2M U7 ( .A(1'b1), .Y(ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(ratio[6]) );
  INVX2M U11 ( .A(1'b1), .Y(ratio[7]) );
  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(ratio[0]) );
  AND2X2M U14 ( .A(n2), .B(n3), .Y(ratio[1]) );
  AND2X2M U15 ( .A(n1), .B(n2), .Y(ratio[2]) );
  NOR3BX2M U16 ( .AN(sel[4]), .B(sel[3]), .C(sel[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(sel[3]), .B(sel[4]), .C(sel[5]), .Y(n1) );
  NOR3X2M U18 ( .A(sel[2]), .B(sel[1]), .C(sel[0]), .Y(n2) );
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
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n3), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  XOR3XLM U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .Y(DIFF[6]) );
  ADDFX2M U2_2 ( .A(A[2]), .B(n2), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX2M U1 ( .A(B[0]), .Y(n8) );
  NAND2X2M U2 ( .A(A[1]), .B(n1), .Y(carry[1]) );
  INVX2M U3 ( .A(B[1]), .Y(n7) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U5 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U6 ( .A(B[2]), .Y(n2) );
  INVX2M U7 ( .A(B[6]), .Y(n6) );
  INVX2M U8 ( .A(B[3]), .Y(n3) );
  INVX2M U9 ( .A(B[4]), .Y(n4) );
  INVX2M U10 ( .A(B[5]), .Y(n5) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, High, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, n44, N8, N7, N6, N5, N4, N2,
         \sub_1_root_sub_0_root_sub_38_2/carry[6] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[5] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[4] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [6:0] CLK_togg;
  wire   [6:0] odd_CLK_togg;
  wire   [6:0] Counter;
  assign N2 = i_div_ratio[0];

  ClkDiv_0_DW01_inc_0 add_65 ( .A(Counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19}) );
  ClkDiv_0_DW01_sub_0 sub_0_root_sub_0_root_sub_38_2 ( .A({N8, N7, N6, N5, N4, 
        CLK_togg[0], N2}), .B(CLK_togg), .CI(1'b0), .DIFF(odd_CLK_togg) );
  DFFRQX2M \Counter_reg[6]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[6]) );
  DFFRQX2M div_clk_reg ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(High) );
  DFFRQX2M \Counter_reg[5]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[5]) );
  DFFRQX2M \Counter_reg[0]  ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[0]) );
  DFFRQX2M \Counter_reg[1]  ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[1]) );
  DFFRQX2M \Counter_reg[4]  ( .D(N30), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[4]) );
  DFFRQX2M \Counter_reg[3]  ( .D(N29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[3]) );
  DFFRQX2M \Counter_reg[2]  ( .D(N28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[2]) );
  OR2X2M U3 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U4 ( .A(High), .B(i_ref_clk), .S0(N1), .Y(o_div_clk) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  XNOR2X1M U6 ( .A(i_div_ratio[6]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ), .Y(N8) );
  OR2X1M U7 ( .A(i_div_ratio[5]), .B(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .Y(\sub_1_root_sub_0_root_sub_38_2/carry[6] ) );
  XNOR2X1M U8 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .B(
        i_div_ratio[5]), .Y(N7) );
  OR2X1M U9 ( .A(i_div_ratio[4]), .B(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .Y(\sub_1_root_sub_0_root_sub_38_2/carry[5] ) );
  XNOR2X1M U10 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .B(
        i_div_ratio[4]), .Y(N6) );
  OR2X1M U11 ( .A(i_div_ratio[3]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ) );
  XNOR2X1M U12 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[3] ), .B(
        i_div_ratio[3]), .Y(N5) );
  OR2X1M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ) );
  XNOR2X1M U14 ( .A(i_div_ratio[1]), .B(i_div_ratio[2]), .Y(N4) );
  CLKINVX1M U15 ( .A(i_div_ratio[1]), .Y(CLK_togg[0]) );
  OAI2BB1X1M U16 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        CLK_togg[1]) );
  OR2X1M U17 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(CLK_togg[2]) );
  NOR2X1M U19 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U20 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(CLK_togg[3]) );
  CLKNAND2X2M U21 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U22 ( .A0(n3), .A1(n6), .B0(n4), .Y(CLK_togg[4]) );
  XNOR2X1M U23 ( .A(i_div_ratio[6]), .B(n4), .Y(CLK_togg[5]) );
  NOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U25 ( .A(i_div_ratio[7]), .B(n5), .Y(CLK_togg[6]) );
  NOR2X1M U26 ( .A(n7), .B(n8), .Y(n44) );
  MXI2X1M U27 ( .A(n9), .B(n10), .S0(High), .Y(n8) );
  NOR2BX1M U28 ( .AN(N25), .B(n11), .Y(N32) );
  NOR2BX1M U29 ( .AN(N24), .B(n11), .Y(N31) );
  NOR2BX1M U30 ( .AN(N23), .B(n11), .Y(N30) );
  NOR2BX1M U31 ( .AN(N22), .B(n11), .Y(N29) );
  NOR2BX1M U32 ( .AN(N21), .B(n11), .Y(N28) );
  NOR2BX1M U33 ( .AN(N20), .B(n11), .Y(N27) );
  NOR2BX1M U34 ( .AN(N19), .B(n11), .Y(N26) );
  OR2X1M U35 ( .A(n9), .B(n7), .Y(n11) );
  OAI21X1M U36 ( .A0(N2), .A1(n12), .B0(n10), .Y(n9) );
  CLKMX2X2M U37 ( .A(n13), .B(n12), .S0(High), .Y(n10) );
  OAI2BB1X1M U38 ( .A0N(n14), .A1N(odd_CLK_togg[6]), .B0(n15), .Y(n13) );
  OAI22X1M U39 ( .A0(n16), .A1(n17), .B0(odd_CLK_togg[6]), .B1(n14), .Y(n15)
         );
  NOR2X1M U40 ( .A(Counter[5]), .B(n18), .Y(n17) );
  AOI221XLM U41 ( .A0(Counter[4]), .A1(n19), .B0(Counter[5]), .B1(n18), .C0(
        n20), .Y(n16) );
  AOI221XLM U42 ( .A0(odd_CLK_togg[3]), .A1(n21), .B0(odd_CLK_togg[4]), .B1(
        n22), .C0(n23), .Y(n20) );
  AOI222X1M U43 ( .A0(Counter[2]), .A1(n24), .B0(n25), .B1(n26), .C0(
        Counter[3]), .C1(n27), .Y(n23) );
  CLKINVX1M U44 ( .A(odd_CLK_togg[3]), .Y(n27) );
  OAI211X1M U45 ( .A0(odd_CLK_togg[1]), .A1(n28), .B0(n29), .C0(
        odd_CLK_togg[0]), .Y(n26) );
  AOI22X1M U46 ( .A0(odd_CLK_togg[2]), .A1(n30), .B0(odd_CLK_togg[1]), .B1(n28), .Y(n25) );
  CLKINVX1M U47 ( .A(odd_CLK_togg[2]), .Y(n24) );
  CLKINVX1M U48 ( .A(odd_CLK_togg[5]), .Y(n18) );
  CLKINVX1M U49 ( .A(odd_CLK_togg[4]), .Y(n19) );
  AOI2B1X1M U50 ( .A1N(CLK_togg[6]), .A0(Counter[6]), .B0(n31), .Y(n12) );
  AOI221XLM U51 ( .A0(CLK_togg[5]), .A1(n32), .B0(CLK_togg[6]), .B1(n14), .C0(
        n33), .Y(n31) );
  AOI221XLM U52 ( .A0(Counter[4]), .A1(n34), .B0(Counter[5]), .B1(n35), .C0(
        n36), .Y(n33) );
  AOI221XLM U53 ( .A0(CLK_togg[3]), .A1(n21), .B0(CLK_togg[4]), .B1(n22), .C0(
        n37), .Y(n36) );
  AOI222X1M U54 ( .A0(Counter[2]), .A1(n38), .B0(n39), .B1(n40), .C0(
        Counter[3]), .C1(n41), .Y(n37) );
  CLKINVX1M U55 ( .A(CLK_togg[3]), .Y(n41) );
  OAI211X1M U56 ( .A0(CLK_togg[1]), .A1(n28), .B0(n29), .C0(CLK_togg[0]), .Y(
        n40) );
  CLKINVX1M U57 ( .A(Counter[0]), .Y(n29) );
  AOI22X1M U58 ( .A0(CLK_togg[2]), .A1(n30), .B0(CLK_togg[1]), .B1(n28), .Y(
        n39) );
  CLKINVX1M U59 ( .A(Counter[1]), .Y(n28) );
  CLKINVX1M U60 ( .A(Counter[2]), .Y(n30) );
  CLKINVX1M U61 ( .A(CLK_togg[2]), .Y(n38) );
  CLKINVX1M U62 ( .A(Counter[4]), .Y(n22) );
  CLKINVX1M U63 ( .A(Counter[3]), .Y(n21) );
  CLKINVX1M U64 ( .A(CLK_togg[5]), .Y(n35) );
  CLKINVX1M U65 ( .A(CLK_togg[4]), .Y(n34) );
  CLKINVX1M U66 ( .A(Counter[6]), .Y(n14) );
  CLKINVX1M U67 ( .A(Counter[5]), .Y(n32) );
  NAND2BX1M U68 ( .AN(n7), .B(i_rst_n), .Y(N1) );
  OAI2BB1X1M U69 ( .A0N(n42), .A1N(n43), .B0(i_clk_en), .Y(n7) );
  NOR4X1M U70 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n43) );
  NOR3X1M U71 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n42) );
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

  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3XLM U2_6 ( .A(A[6]), .B(n2), .C(carry[6]), .Y(DIFF[6]) );
  INVX2M U1 ( .A(B[0]), .Y(n8) );
  INVX2M U2 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U3 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U4 ( .A(B[2]), .Y(n6) );
  INVX2M U5 ( .A(B[3]), .Y(n5) );
  INVX2M U6 ( .A(B[4]), .Y(n4) );
  INVX2M U7 ( .A(B[5]), .Y(n3) );
  NAND2X2M U8 ( .A(A[1]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n7) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, High, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N8, N7, N6, N5, N4, N2,
         \sub_1_root_sub_0_root_sub_38_2/carry[6] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[5] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[4] ,
         \sub_1_root_sub_0_root_sub_38_2/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n46;
  wire   [6:0] CLK_togg;
  wire   [6:0] odd_CLK_togg;
  wire   [6:0] Counter;
  assign N2 = i_div_ratio[0];

  ClkDiv_1_DW01_inc_0 add_65 ( .A(Counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19}) );
  ClkDiv_1_DW01_sub_0 sub_0_root_sub_0_root_sub_38_2 ( .A({N8, N7, N6, N5, N4, 
        CLK_togg[0], N2}), .B(CLK_togg), .CI(1'b0), .DIFF(odd_CLK_togg) );
  DFFRQX2M \Counter_reg[6]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[6]) );
  DFFRQX2M div_clk_reg ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(High) );
  DFFRQX2M \Counter_reg[5]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[5]) );
  DFFRQX2M \Counter_reg[0]  ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[0]) );
  DFFRQX2M \Counter_reg[1]  ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[1]) );
  DFFRQX2M \Counter_reg[4]  ( .D(N30), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[4]) );
  DFFRQX2M \Counter_reg[3]  ( .D(N29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[3]) );
  DFFRQX2M \Counter_reg[2]  ( .D(N28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter[2]) );
  MX2X2M U3 ( .A(High), .B(i_ref_clk), .S0(N1), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  XNOR2X1M U6 ( .A(i_div_ratio[6]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[6] ), .Y(N8) );
  OR2X1M U7 ( .A(i_div_ratio[5]), .B(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .Y(\sub_1_root_sub_0_root_sub_38_2/carry[6] ) );
  XNOR2X1M U8 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[5] ), .B(
        i_div_ratio[5]), .Y(N7) );
  OR2X1M U9 ( .A(i_div_ratio[4]), .B(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .Y(\sub_1_root_sub_0_root_sub_38_2/carry[5] ) );
  XNOR2X1M U10 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[4] ), .B(
        i_div_ratio[4]), .Y(N6) );
  OR2X1M U11 ( .A(i_div_ratio[3]), .B(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[4] ) );
  XNOR2X1M U12 ( .A(\sub_1_root_sub_0_root_sub_38_2/carry[3] ), .B(
        i_div_ratio[3]), .Y(N5) );
  OR2X1M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(
        \sub_1_root_sub_0_root_sub_38_2/carry[3] ) );
  XNOR2X1M U14 ( .A(i_div_ratio[1]), .B(i_div_ratio[2]), .Y(N4) );
  CLKINVX1M U15 ( .A(i_div_ratio[1]), .Y(CLK_togg[0]) );
  OAI2BB1X1M U16 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        CLK_togg[1]) );
  OR2X1M U17 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(CLK_togg[2]) );
  NOR2X1M U19 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U20 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(CLK_togg[3]) );
  CLKNAND2X2M U21 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U22 ( .A0(n3), .A1(n6), .B0(n4), .Y(CLK_togg[4]) );
  XNOR2X1M U23 ( .A(i_div_ratio[6]), .B(n4), .Y(CLK_togg[5]) );
  NOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U25 ( .A(i_div_ratio[7]), .B(n5), .Y(CLK_togg[6]) );
  NOR2X1M U26 ( .A(n7), .B(n8), .Y(n46) );
  MXI2X1M U27 ( .A(n9), .B(n10), .S0(High), .Y(n8) );
  NOR2BX1M U28 ( .AN(N25), .B(n11), .Y(N32) );
  NOR2BX1M U29 ( .AN(N24), .B(n11), .Y(N31) );
  NOR2BX1M U30 ( .AN(N23), .B(n11), .Y(N30) );
  NOR2BX1M U31 ( .AN(N22), .B(n11), .Y(N29) );
  NOR2BX1M U32 ( .AN(N21), .B(n11), .Y(N28) );
  NOR2BX1M U33 ( .AN(N20), .B(n11), .Y(N27) );
  NOR2BX1M U34 ( .AN(N19), .B(n11), .Y(N26) );
  OR2X1M U35 ( .A(n9), .B(n7), .Y(n11) );
  OAI21X1M U36 ( .A0(N2), .A1(n12), .B0(n10), .Y(n9) );
  CLKMX2X2M U37 ( .A(n13), .B(n12), .S0(High), .Y(n10) );
  OAI2BB1X1M U38 ( .A0N(n14), .A1N(odd_CLK_togg[6]), .B0(n15), .Y(n13) );
  OAI22X1M U39 ( .A0(n16), .A1(n17), .B0(odd_CLK_togg[6]), .B1(n14), .Y(n15)
         );
  NOR2X1M U40 ( .A(Counter[5]), .B(n18), .Y(n17) );
  AOI221XLM U41 ( .A0(Counter[4]), .A1(n19), .B0(Counter[5]), .B1(n18), .C0(
        n20), .Y(n16) );
  AOI221XLM U42 ( .A0(odd_CLK_togg[3]), .A1(n21), .B0(odd_CLK_togg[4]), .B1(
        n22), .C0(n23), .Y(n20) );
  AOI222X1M U43 ( .A0(Counter[2]), .A1(n24), .B0(n25), .B1(n26), .C0(
        Counter[3]), .C1(n27), .Y(n23) );
  CLKINVX1M U44 ( .A(odd_CLK_togg[3]), .Y(n27) );
  OAI211X1M U45 ( .A0(odd_CLK_togg[1]), .A1(n28), .B0(n29), .C0(
        odd_CLK_togg[0]), .Y(n26) );
  AOI22X1M U46 ( .A0(odd_CLK_togg[2]), .A1(n30), .B0(odd_CLK_togg[1]), .B1(n28), .Y(n25) );
  CLKINVX1M U47 ( .A(odd_CLK_togg[2]), .Y(n24) );
  CLKINVX1M U48 ( .A(odd_CLK_togg[5]), .Y(n18) );
  CLKINVX1M U49 ( .A(odd_CLK_togg[4]), .Y(n19) );
  AOI2B1X1M U50 ( .A1N(CLK_togg[6]), .A0(Counter[6]), .B0(n31), .Y(n12) );
  AOI221XLM U51 ( .A0(CLK_togg[5]), .A1(n32), .B0(CLK_togg[6]), .B1(n14), .C0(
        n33), .Y(n31) );
  AOI221XLM U52 ( .A0(Counter[4]), .A1(n34), .B0(Counter[5]), .B1(n35), .C0(
        n36), .Y(n33) );
  AOI221XLM U53 ( .A0(CLK_togg[3]), .A1(n21), .B0(CLK_togg[4]), .B1(n22), .C0(
        n37), .Y(n36) );
  AOI222X1M U54 ( .A0(Counter[2]), .A1(n38), .B0(n39), .B1(n40), .C0(
        Counter[3]), .C1(n41), .Y(n37) );
  CLKINVX1M U55 ( .A(CLK_togg[3]), .Y(n41) );
  OAI211X1M U56 ( .A0(CLK_togg[1]), .A1(n28), .B0(n29), .C0(CLK_togg[0]), .Y(
        n40) );
  CLKINVX1M U57 ( .A(Counter[0]), .Y(n29) );
  AOI22X1M U58 ( .A0(CLK_togg[2]), .A1(n30), .B0(CLK_togg[1]), .B1(n28), .Y(
        n39) );
  CLKINVX1M U59 ( .A(Counter[1]), .Y(n28) );
  CLKINVX1M U60 ( .A(Counter[2]), .Y(n30) );
  CLKINVX1M U61 ( .A(CLK_togg[2]), .Y(n38) );
  CLKINVX1M U62 ( .A(Counter[4]), .Y(n22) );
  CLKINVX1M U63 ( .A(Counter[3]), .Y(n21) );
  CLKINVX1M U64 ( .A(CLK_togg[5]), .Y(n35) );
  CLKINVX1M U65 ( .A(CLK_togg[4]), .Y(n34) );
  CLKINVX1M U66 ( .A(Counter[6]), .Y(n14) );
  CLKINVX1M U67 ( .A(Counter[5]), .Y(n32) );
  NAND2BX1M U68 ( .AN(n7), .B(i_rst_n), .Y(N1) );
  OAI2BB1X1M U69 ( .A0N(n42), .A1N(n43), .B0(i_clk_en), .Y(n7) );
  NOR4X1M U70 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n43) );
  NOR3X1M U71 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n42) );
endmodule


module FIFO_Memory_BUS_WIDTH8_ADDR_WIDTH3_DEPTH8 ( W_data, W_addr, R_addr, 
        W_inc, W_full, W_CLK, W_RST, R_data );
  input [7:0] W_data;
  input [2:0] W_addr;
  input [2:0] R_addr;
  output [7:0] R_data;
  input W_inc, W_full, W_CLK, W_RST;
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
         \MEM[0][4] , \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113;
  assign N9 = R_addr[0];
  assign N10 = R_addr[1];
  assign N11 = R_addr[2];

  DFFRQX2M \MEM_reg[5][7]  ( .D(n69), .CK(W_CLK), .RN(n100), .Q(\MEM[5][7] )
         );
  DFFRQX2M \MEM_reg[5][6]  ( .D(n68), .CK(W_CLK), .RN(n100), .Q(\MEM[5][6] )
         );
  DFFRQX2M \MEM_reg[5][5]  ( .D(n67), .CK(W_CLK), .RN(n100), .Q(\MEM[5][5] )
         );
  DFFRQX2M \MEM_reg[5][4]  ( .D(n66), .CK(W_CLK), .RN(n100), .Q(\MEM[5][4] )
         );
  DFFRQX2M \MEM_reg[5][3]  ( .D(n65), .CK(W_CLK), .RN(n100), .Q(\MEM[5][3] )
         );
  DFFRQX2M \MEM_reg[5][2]  ( .D(n64), .CK(W_CLK), .RN(n100), .Q(\MEM[5][2] )
         );
  DFFRQX2M \MEM_reg[5][1]  ( .D(n63), .CK(W_CLK), .RN(n100), .Q(\MEM[5][1] )
         );
  DFFRQX2M \MEM_reg[5][0]  ( .D(n62), .CK(W_CLK), .RN(n100), .Q(\MEM[5][0] )
         );
  DFFRQX2M \MEM_reg[1][7]  ( .D(n37), .CK(W_CLK), .RN(n102), .Q(\MEM[1][7] )
         );
  DFFRQX2M \MEM_reg[1][6]  ( .D(n36), .CK(W_CLK), .RN(n102), .Q(\MEM[1][6] )
         );
  DFFRQX2M \MEM_reg[1][5]  ( .D(n35), .CK(W_CLK), .RN(n102), .Q(\MEM[1][5] )
         );
  DFFRQX2M \MEM_reg[1][4]  ( .D(n34), .CK(W_CLK), .RN(n102), .Q(\MEM[1][4] )
         );
  DFFRQX2M \MEM_reg[1][3]  ( .D(n33), .CK(W_CLK), .RN(n103), .Q(\MEM[1][3] )
         );
  DFFRQX2M \MEM_reg[1][2]  ( .D(n32), .CK(W_CLK), .RN(n103), .Q(\MEM[1][2] )
         );
  DFFRQX2M \MEM_reg[1][1]  ( .D(n31), .CK(W_CLK), .RN(n103), .Q(\MEM[1][1] )
         );
  DFFRQX2M \MEM_reg[1][0]  ( .D(n30), .CK(W_CLK), .RN(n103), .Q(\MEM[1][0] )
         );
  DFFRQX2M \MEM_reg[7][7]  ( .D(n85), .CK(W_CLK), .RN(n99), .Q(\MEM[7][7] ) );
  DFFRQX2M \MEM_reg[7][6]  ( .D(n84), .CK(W_CLK), .RN(n99), .Q(\MEM[7][6] ) );
  DFFRQX2M \MEM_reg[7][5]  ( .D(n83), .CK(W_CLK), .RN(n99), .Q(\MEM[7][5] ) );
  DFFRQX2M \MEM_reg[7][4]  ( .D(n82), .CK(W_CLK), .RN(n99), .Q(\MEM[7][4] ) );
  DFFRQX2M \MEM_reg[7][3]  ( .D(n81), .CK(W_CLK), .RN(n99), .Q(\MEM[7][3] ) );
  DFFRQX2M \MEM_reg[7][2]  ( .D(n80), .CK(W_CLK), .RN(n99), .Q(\MEM[7][2] ) );
  DFFRQX2M \MEM_reg[7][1]  ( .D(n79), .CK(W_CLK), .RN(n99), .Q(\MEM[7][1] ) );
  DFFRQX2M \MEM_reg[7][0]  ( .D(n78), .CK(W_CLK), .RN(n99), .Q(\MEM[7][0] ) );
  DFFRQX2M \MEM_reg[3][7]  ( .D(n53), .CK(W_CLK), .RN(n101), .Q(\MEM[3][7] )
         );
  DFFRQX2M \MEM_reg[3][6]  ( .D(n52), .CK(W_CLK), .RN(n101), .Q(\MEM[3][6] )
         );
  DFFRQX2M \MEM_reg[3][5]  ( .D(n51), .CK(W_CLK), .RN(n101), .Q(\MEM[3][5] )
         );
  DFFRQX2M \MEM_reg[3][4]  ( .D(n50), .CK(W_CLK), .RN(n101), .Q(\MEM[3][4] )
         );
  DFFRQX2M \MEM_reg[3][3]  ( .D(n49), .CK(W_CLK), .RN(n101), .Q(\MEM[3][3] )
         );
  DFFRQX2M \MEM_reg[3][2]  ( .D(n48), .CK(W_CLK), .RN(n101), .Q(\MEM[3][2] )
         );
  DFFRQX2M \MEM_reg[3][1]  ( .D(n47), .CK(W_CLK), .RN(n101), .Q(\MEM[3][1] )
         );
  DFFRQX2M \MEM_reg[3][0]  ( .D(n46), .CK(W_CLK), .RN(n102), .Q(\MEM[3][0] )
         );
  DFFRQX2M \MEM_reg[6][7]  ( .D(n77), .CK(W_CLK), .RN(n99), .Q(\MEM[6][7] ) );
  DFFRQX2M \MEM_reg[6][6]  ( .D(n76), .CK(W_CLK), .RN(n99), .Q(\MEM[6][6] ) );
  DFFRQX2M \MEM_reg[6][5]  ( .D(n75), .CK(W_CLK), .RN(n99), .Q(\MEM[6][5] ) );
  DFFRQX2M \MEM_reg[6][4]  ( .D(n74), .CK(W_CLK), .RN(n99), .Q(\MEM[6][4] ) );
  DFFRQX2M \MEM_reg[6][3]  ( .D(n73), .CK(W_CLK), .RN(n99), .Q(\MEM[6][3] ) );
  DFFRQX2M \MEM_reg[6][2]  ( .D(n72), .CK(W_CLK), .RN(n100), .Q(\MEM[6][2] )
         );
  DFFRQX2M \MEM_reg[6][1]  ( .D(n71), .CK(W_CLK), .RN(n100), .Q(\MEM[6][1] )
         );
  DFFRQX2M \MEM_reg[6][0]  ( .D(n70), .CK(W_CLK), .RN(n100), .Q(\MEM[6][0] )
         );
  DFFRQX2M \MEM_reg[2][7]  ( .D(n45), .CK(W_CLK), .RN(n102), .Q(\MEM[2][7] )
         );
  DFFRQX2M \MEM_reg[2][6]  ( .D(n44), .CK(W_CLK), .RN(n102), .Q(\MEM[2][6] )
         );
  DFFRQX2M \MEM_reg[2][5]  ( .D(n43), .CK(W_CLK), .RN(n102), .Q(\MEM[2][5] )
         );
  DFFRQX2M \MEM_reg[2][4]  ( .D(n42), .CK(W_CLK), .RN(n102), .Q(\MEM[2][4] )
         );
  DFFRQX2M \MEM_reg[2][3]  ( .D(n41), .CK(W_CLK), .RN(n102), .Q(\MEM[2][3] )
         );
  DFFRQX2M \MEM_reg[2][2]  ( .D(n40), .CK(W_CLK), .RN(n102), .Q(\MEM[2][2] )
         );
  DFFRQX2M \MEM_reg[2][1]  ( .D(n39), .CK(W_CLK), .RN(n102), .Q(\MEM[2][1] )
         );
  DFFRQX2M \MEM_reg[2][0]  ( .D(n38), .CK(W_CLK), .RN(n102), .Q(\MEM[2][0] )
         );
  DFFRQX2M \MEM_reg[4][7]  ( .D(n61), .CK(W_CLK), .RN(n100), .Q(\MEM[4][7] )
         );
  DFFRQX2M \MEM_reg[4][6]  ( .D(n60), .CK(W_CLK), .RN(n100), .Q(\MEM[4][6] )
         );
  DFFRQX2M \MEM_reg[4][5]  ( .D(n59), .CK(W_CLK), .RN(n101), .Q(\MEM[4][5] )
         );
  DFFRQX2M \MEM_reg[4][4]  ( .D(n58), .CK(W_CLK), .RN(n101), .Q(\MEM[4][4] )
         );
  DFFRQX2M \MEM_reg[4][3]  ( .D(n57), .CK(W_CLK), .RN(n101), .Q(\MEM[4][3] )
         );
  DFFRQX2M \MEM_reg[4][2]  ( .D(n56), .CK(W_CLK), .RN(n101), .Q(\MEM[4][2] )
         );
  DFFRQX2M \MEM_reg[4][1]  ( .D(n55), .CK(W_CLK), .RN(n101), .Q(\MEM[4][1] )
         );
  DFFRQX2M \MEM_reg[4][0]  ( .D(n54), .CK(W_CLK), .RN(n101), .Q(\MEM[4][0] )
         );
  DFFRQX2M \MEM_reg[0][7]  ( .D(n29), .CK(W_CLK), .RN(n103), .Q(\MEM[0][7] )
         );
  DFFRQX2M \MEM_reg[0][6]  ( .D(n28), .CK(W_CLK), .RN(n103), .Q(\MEM[0][6] )
         );
  DFFRQX2M \MEM_reg[0][5]  ( .D(n27), .CK(W_CLK), .RN(n103), .Q(\MEM[0][5] )
         );
  DFFRQX2M \MEM_reg[0][4]  ( .D(n26), .CK(W_CLK), .RN(n103), .Q(\MEM[0][4] )
         );
  DFFRQX2M \MEM_reg[0][3]  ( .D(n25), .CK(W_CLK), .RN(n103), .Q(\MEM[0][3] )
         );
  DFFRQX2M \MEM_reg[0][2]  ( .D(n24), .CK(W_CLK), .RN(n103), .Q(\MEM[0][2] )
         );
  DFFRQX2M \MEM_reg[0][1]  ( .D(n23), .CK(W_CLK), .RN(n103), .Q(\MEM[0][1] )
         );
  DFFRQX2M \MEM_reg[0][0]  ( .D(n22), .CK(W_CLK), .RN(n103), .Q(\MEM[0][0] )
         );
  NOR2BX2M U2 ( .AN(n16), .B(W_addr[2]), .Y(n12) );
  BUFX2M U3 ( .A(n19), .Y(n96) );
  BUFX2M U4 ( .A(n20), .Y(n95) );
  BUFX2M U5 ( .A(n21), .Y(n94) );
  BUFX2M U6 ( .A(n97), .Y(n101) );
  BUFX2M U7 ( .A(n97), .Y(n100) );
  BUFX2M U8 ( .A(n97), .Y(n99) );
  BUFX2M U9 ( .A(n98), .Y(n102) );
  BUFX2M U10 ( .A(n98), .Y(n103) );
  BUFX2M U11 ( .A(W_RST), .Y(n97) );
  BUFX2M U12 ( .A(W_RST), .Y(n98) );
  NAND3X2M U13 ( .A(n104), .B(n113), .C(n18), .Y(n17) );
  NAND3X2M U14 ( .A(n104), .B(n113), .C(n12), .Y(n11) );
  NAND3X2M U15 ( .A(n12), .B(n104), .C(W_addr[1]), .Y(n14) );
  NAND3X2M U16 ( .A(W_addr[0]), .B(n12), .C(W_addr[1]), .Y(n15) );
  NAND3X2M U17 ( .A(n12), .B(n113), .C(W_addr[0]), .Y(n13) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n105), .A0N(\MEM[0][0] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n106), .A0N(\MEM[0][1] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n107), .A0N(\MEM[0][2] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n108), .A0N(\MEM[0][3] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n109), .A0N(\MEM[0][4] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n110), .A0N(\MEM[0][5] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n111), .A0N(\MEM[0][6] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n112), .A0N(\MEM[0][7] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U26 ( .B0(n105), .B1(n14), .A0N(\MEM[2][0] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U27 ( .B0(n106), .B1(n14), .A0N(\MEM[2][1] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U28 ( .B0(n107), .B1(n14), .A0N(\MEM[2][2] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U29 ( .B0(n108), .B1(n14), .A0N(\MEM[2][3] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U30 ( .B0(n109), .B1(n14), .A0N(\MEM[2][4] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U31 ( .B0(n110), .B1(n14), .A0N(\MEM[2][5] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U32 ( .B0(n111), .B1(n14), .A0N(\MEM[2][6] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U33 ( .B0(n112), .B1(n14), .A0N(\MEM[2][7] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U34 ( .B0(n105), .B1(n15), .A0N(\MEM[3][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U35 ( .B0(n106), .B1(n15), .A0N(\MEM[3][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U36 ( .B0(n107), .B1(n15), .A0N(\MEM[3][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U37 ( .B0(n108), .B1(n15), .A0N(\MEM[3][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U38 ( .B0(n109), .B1(n15), .A0N(\MEM[3][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U39 ( .B0(n110), .B1(n15), .A0N(\MEM[3][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U40 ( .B0(n111), .B1(n15), .A0N(\MEM[3][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U41 ( .B0(n112), .B1(n15), .A0N(\MEM[3][7] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U42 ( .B0(n105), .B1(n13), .A0N(\MEM[1][0] ), .A1N(n13), .Y(n30)
         );
  OAI2BB2X1M U43 ( .B0(n106), .B1(n13), .A0N(\MEM[1][1] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U44 ( .B0(n107), .B1(n13), .A0N(\MEM[1][2] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U45 ( .B0(n108), .B1(n13), .A0N(\MEM[1][3] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U46 ( .B0(n109), .B1(n13), .A0N(\MEM[1][4] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U47 ( .B0(n110), .B1(n13), .A0N(\MEM[1][5] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U48 ( .B0(n111), .B1(n13), .A0N(\MEM[1][6] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U49 ( .B0(n112), .B1(n13), .A0N(\MEM[1][7] ), .A1N(n13), .Y(n37)
         );
  OAI2BB2X1M U50 ( .B0(n105), .B1(n17), .A0N(\MEM[4][0] ), .A1N(n17), .Y(n54)
         );
  OAI2BB2X1M U51 ( .B0(n106), .B1(n17), .A0N(\MEM[4][1] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U52 ( .B0(n107), .B1(n17), .A0N(\MEM[4][2] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U53 ( .B0(n108), .B1(n17), .A0N(\MEM[4][3] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U54 ( .B0(n109), .B1(n17), .A0N(\MEM[4][4] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U55 ( .B0(n110), .B1(n17), .A0N(\MEM[4][5] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U56 ( .B0(n111), .B1(n17), .A0N(\MEM[4][6] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U57 ( .B0(n112), .B1(n17), .A0N(\MEM[4][7] ), .A1N(n17), .Y(n61)
         );
  INVX2M U58 ( .A(W_data[0]), .Y(n105) );
  INVX2M U59 ( .A(W_data[1]), .Y(n106) );
  INVX2M U60 ( .A(W_data[2]), .Y(n107) );
  INVX2M U61 ( .A(W_data[3]), .Y(n108) );
  INVX2M U62 ( .A(W_data[4]), .Y(n109) );
  INVX2M U63 ( .A(W_data[5]), .Y(n110) );
  INVX2M U64 ( .A(W_data[6]), .Y(n111) );
  INVX2M U65 ( .A(W_data[7]), .Y(n112) );
  OAI2BB2X1M U66 ( .B0(n105), .B1(n96), .A0N(\MEM[5][0] ), .A1N(n96), .Y(n62)
         );
  OAI2BB2X1M U67 ( .B0(n106), .B1(n96), .A0N(\MEM[5][1] ), .A1N(n96), .Y(n63)
         );
  OAI2BB2X1M U68 ( .B0(n107), .B1(n96), .A0N(\MEM[5][2] ), .A1N(n96), .Y(n64)
         );
  OAI2BB2X1M U69 ( .B0(n108), .B1(n96), .A0N(\MEM[5][3] ), .A1N(n96), .Y(n65)
         );
  OAI2BB2X1M U70 ( .B0(n109), .B1(n96), .A0N(\MEM[5][4] ), .A1N(n96), .Y(n66)
         );
  OAI2BB2X1M U71 ( .B0(n110), .B1(n96), .A0N(\MEM[5][5] ), .A1N(n96), .Y(n67)
         );
  OAI2BB2X1M U72 ( .B0(n111), .B1(n96), .A0N(\MEM[5][6] ), .A1N(n96), .Y(n68)
         );
  OAI2BB2X1M U73 ( .B0(n112), .B1(n96), .A0N(\MEM[5][7] ), .A1N(n96), .Y(n69)
         );
  OAI2BB2X1M U74 ( .B0(n105), .B1(n95), .A0N(\MEM[6][0] ), .A1N(n95), .Y(n70)
         );
  OAI2BB2X1M U75 ( .B0(n106), .B1(n95), .A0N(\MEM[6][1] ), .A1N(n95), .Y(n71)
         );
  OAI2BB2X1M U76 ( .B0(n107), .B1(n95), .A0N(\MEM[6][2] ), .A1N(n95), .Y(n72)
         );
  OAI2BB2X1M U77 ( .B0(n108), .B1(n95), .A0N(\MEM[6][3] ), .A1N(n95), .Y(n73)
         );
  OAI2BB2X1M U78 ( .B0(n109), .B1(n95), .A0N(\MEM[6][4] ), .A1N(n95), .Y(n74)
         );
  OAI2BB2X1M U79 ( .B0(n110), .B1(n95), .A0N(\MEM[6][5] ), .A1N(n95), .Y(n75)
         );
  OAI2BB2X1M U80 ( .B0(n111), .B1(n95), .A0N(\MEM[6][6] ), .A1N(n95), .Y(n76)
         );
  OAI2BB2X1M U81 ( .B0(n112), .B1(n95), .A0N(\MEM[6][7] ), .A1N(n95), .Y(n77)
         );
  OAI2BB2X1M U82 ( .B0(n105), .B1(n94), .A0N(\MEM[7][0] ), .A1N(n94), .Y(n78)
         );
  OAI2BB2X1M U83 ( .B0(n106), .B1(n94), .A0N(\MEM[7][1] ), .A1N(n94), .Y(n79)
         );
  OAI2BB2X1M U84 ( .B0(n107), .B1(n94), .A0N(\MEM[7][2] ), .A1N(n94), .Y(n80)
         );
  OAI2BB2X1M U85 ( .B0(n108), .B1(n94), .A0N(\MEM[7][3] ), .A1N(n94), .Y(n81)
         );
  OAI2BB2X1M U86 ( .B0(n109), .B1(n94), .A0N(\MEM[7][4] ), .A1N(n94), .Y(n82)
         );
  OAI2BB2X1M U87 ( .B0(n110), .B1(n94), .A0N(\MEM[7][5] ), .A1N(n94), .Y(n83)
         );
  OAI2BB2X1M U88 ( .B0(n111), .B1(n94), .A0N(\MEM[7][6] ), .A1N(n94), .Y(n84)
         );
  OAI2BB2X1M U89 ( .B0(n112), .B1(n94), .A0N(\MEM[7][7] ), .A1N(n94), .Y(n85)
         );
  NOR2BX2M U90 ( .AN(W_inc), .B(W_full), .Y(n16) );
  AND2X2M U91 ( .A(W_addr[2]), .B(n16), .Y(n18) );
  NAND3X2M U92 ( .A(W_addr[1]), .B(n104), .C(n18), .Y(n20) );
  NAND3X2M U93 ( .A(W_addr[1]), .B(W_addr[0]), .C(n18), .Y(n21) );
  NAND3X2M U94 ( .A(W_addr[0]), .B(n113), .C(n18), .Y(n19) );
  INVX2M U95 ( .A(W_addr[1]), .Y(n113) );
  INVX2M U96 ( .A(W_addr[0]), .Y(n104) );
  MX2X2M U97 ( .A(n89), .B(n88), .S0(N11), .Y(R_data[6]) );
  MX4X1M U98 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n92), .S1(N10), .Y(n88) );
  MX4X1M U99 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n93), .S1(N10), .Y(n89) );
  MX2X2M U100 ( .A(n91), .B(n90), .S0(N11), .Y(R_data[7]) );
  MX4X1M U101 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U102 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n93), .S1(N10), .Y(n91) );
  MX2X2M U103 ( .A(n10), .B(n9), .S0(N11), .Y(R_data[4]) );
  MX4X1M U104 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U105 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n93), .S1(N10), .Y(n10) );
  MX2X2M U106 ( .A(n87), .B(n86), .S0(N11), .Y(R_data[5]) );
  MX4X1M U107 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n92), .S1(N10), .Y(n86) );
  MX4X1M U108 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n93), .S1(N10), .Y(n87) );
  BUFX2M U109 ( .A(N9), .Y(n93) );
  BUFX2M U110 ( .A(N9), .Y(n92) );
  MX2X2M U111 ( .A(n6), .B(n5), .S0(N11), .Y(R_data[2]) );
  MX4X1M U112 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U113 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n93), .S1(N10), .Y(n6) );
  MX2X2M U114 ( .A(n8), .B(n7), .S0(N11), .Y(R_data[3]) );
  MX4X1M U115 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U116 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n93), .S1(N10), .Y(n8) );
  MX2X2M U117 ( .A(n2), .B(n1), .S0(N11), .Y(R_data[0]) );
  MX4X1M U118 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U119 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n93), .S1(N10), .Y(n2) );
  MX2X2M U120 ( .A(n4), .B(n3), .S0(N11), .Y(R_data[1]) );
  MX4X1M U121 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U122 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n93), .S1(N10), .Y(n4) );
endmodule


module Rptr_empty_ADDR_WIDTH3 ( rq2_wptr, R_inc, R_CLK, R_rst_n, R_addr, R_ptr, 
        R_empty );
  input [3:0] rq2_wptr;
  output [2:0] R_addr;
  output [3:0] R_ptr;
  input R_inc, R_CLK, R_rst_n;
  output R_empty;
  wire   R_empty_val, \R_bin[3] , n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [2:0] R_gray_next;
  wire   [3:0] R_bin_next;

  DFFRQX2M \R_bin_reg[3]  ( .D(R_bin_next[3]), .CK(R_CLK), .RN(R_rst_n), .Q(
        \R_bin[3] ) );
  DFFSQX2M R_empty_reg ( .D(R_empty_val), .CK(R_CLK), .SN(R_rst_n), .Q(R_empty) );
  DFFRQX2M \R_bin_reg[2]  ( .D(R_bin_next[2]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_addr[2]) );
  DFFRQX2M \R_bin_reg[0]  ( .D(R_bin_next[0]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_addr[0]) );
  DFFRQX2M \R_bin_reg[1]  ( .D(R_bin_next[1]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_addr[1]) );
  DFFRQX2M \R_ptr_reg[0]  ( .D(R_gray_next[0]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_ptr[0]) );
  DFFRQX2M \R_ptr_reg[3]  ( .D(R_bin_next[3]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_ptr[3]) );
  DFFRQX2M \R_ptr_reg[2]  ( .D(R_gray_next[2]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_ptr[2]) );
  DFFRQX2M \R_ptr_reg[1]  ( .D(R_gray_next[1]), .CK(R_CLK), .RN(R_rst_n), .Q(
        R_ptr[1]) );
  CLKXOR2X2M U3 ( .A(R_bin_next[3]), .B(R_bin_next[2]), .Y(R_gray_next[2]) );
  CLKXOR2X2M U4 ( .A(R_bin_next[2]), .B(R_bin_next[1]), .Y(R_gray_next[1]) );
  CLKXOR2X2M U5 ( .A(R_bin_next[1]), .B(R_bin_next[0]), .Y(R_gray_next[0]) );
  XNOR2X2M U6 ( .A(n5), .B(\R_bin[3] ), .Y(R_bin_next[3]) );
  NAND3X2M U7 ( .A(R_addr[1]), .B(n6), .C(R_addr[2]), .Y(n5) );
  XNOR2X2M U8 ( .A(n7), .B(R_addr[2]), .Y(R_bin_next[2]) );
  NAND2X2M U9 ( .A(R_addr[1]), .B(n6), .Y(n7) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(R_empty_val) );
  CLKXOR2X2M U11 ( .A(rq2_wptr[3]), .B(R_bin_next[3]), .Y(n2) );
  CLKXOR2X2M U12 ( .A(rq2_wptr[2]), .B(R_gray_next[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(rq2_wptr[1]), .B(R_gray_next[1]), .Y(n4) );
  NOR2BX2M U14 ( .AN(R_inc), .B(R_empty), .Y(n8) );
  AND2X2M U15 ( .A(R_addr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(rq2_wptr[0]), .B(R_gray_next[0]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(n6), .B(R_addr[1]), .Y(R_bin_next[1]) );
  CLKXOR2X2M U18 ( .A(n8), .B(R_addr[0]), .Y(R_bin_next[0]) );
endmodule


module Wptr_full_ADDR_WIDTH3 ( wq2_rptr, W_inc, W_CLK, W_rst_n, W_addr, W_ptr, 
        W_full );
  input [3:0] wq2_rptr;
  output [2:0] W_addr;
  output [3:0] W_ptr;
  input W_inc, W_CLK, W_rst_n;
  output W_full;
  wire   W_full_val, \W_bin[3] , n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [2:0] W_gray_next;
  wire   [3:0] W_bin_next;

  DFFRQX2M \W_bin_reg[3]  ( .D(W_bin_next[3]), .CK(W_CLK), .RN(W_rst_n), .Q(
        \W_bin[3] ) );
  DFFRQX2M \W_bin_reg[2]  ( .D(W_bin_next[2]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_addr[2]) );
  DFFRQX2M \W_bin_reg[1]  ( .D(W_bin_next[1]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_addr[1]) );
  DFFRQX2M W_full_reg ( .D(W_full_val), .CK(W_CLK), .RN(W_rst_n), .Q(W_full)
         );
  DFFRQX2M \W_bin_reg[0]  ( .D(W_bin_next[0]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_addr[0]) );
  DFFRQX2M \W_ptr_reg[3]  ( .D(W_bin_next[3]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_ptr[3]) );
  DFFRQX2M \W_ptr_reg[0]  ( .D(W_gray_next[0]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_ptr[0]) );
  DFFRQX2M \W_ptr_reg[2]  ( .D(W_gray_next[2]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_ptr[2]) );
  DFFRQX2M \W_ptr_reg[1]  ( .D(W_gray_next[1]), .CK(W_CLK), .RN(W_rst_n), .Q(
        W_ptr[1]) );
  CLKXOR2X2M U3 ( .A(W_bin_next[2]), .B(W_bin_next[1]), .Y(W_gray_next[1]) );
  CLKXOR2X2M U4 ( .A(W_bin_next[1]), .B(W_bin_next[0]), .Y(W_gray_next[0]) );
  CLKXOR2X2M U5 ( .A(W_bin_next[3]), .B(W_bin_next[2]), .Y(W_gray_next[2]) );
  NOR4X1M U6 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(W_full_val) );
  XNOR2X2M U7 ( .A(W_bin_next[3]), .B(wq2_rptr[3]), .Y(n1) );
  XNOR2X2M U8 ( .A(W_gray_next[2]), .B(wq2_rptr[2]), .Y(n2) );
  CLKXOR2X2M U9 ( .A(wq2_rptr[0]), .B(W_gray_next[0]), .Y(n3) );
  NOR2BX2M U10 ( .AN(W_inc), .B(W_full), .Y(n8) );
  AND2X2M U11 ( .A(W_addr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U12 ( .A(n6), .B(W_addr[1]), .Y(W_bin_next[1]) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[1]), .B(W_gray_next[1]), .Y(n4) );
  XNOR2X2M U14 ( .A(n7), .B(W_addr[2]), .Y(W_bin_next[2]) );
  NAND2X2M U15 ( .A(W_addr[1]), .B(n6), .Y(n7) );
  XNOR2X2M U16 ( .A(n5), .B(\W_bin[3] ), .Y(W_bin_next[3]) );
  NAND3X2M U17 ( .A(W_addr[1]), .B(n6), .C(W_addr[2]), .Y(n5) );
  CLKXOR2X2M U18 ( .A(n8), .B(W_addr[0]), .Y(W_bin_next[0]) );
endmodule


module SYNC_ADDR_WIDTH3_0 ( ASYNC_addr, CLK, RST, SYNC_addr );
  input [3:0] ASYNC_addr;
  output [3:0] SYNC_addr;
  input CLK, RST;
  wire   \SYNC[3][0] , \SYNC[2][0] , \SYNC[1][0] , \SYNC[0][0] ;

  DFFRQX2M \SYNC_reg[3][1]  ( .D(\SYNC[3][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[3]) );
  DFFRQX2M \SYNC_reg[2][1]  ( .D(\SYNC[2][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[2]) );
  DFFRQX2M \SYNC_reg[1][1]  ( .D(\SYNC[1][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[1]) );
  DFFRQX2M \SYNC_reg[0][1]  ( .D(\SYNC[0][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[0]) );
  DFFRQX2M \SYNC_reg[3][0]  ( .D(ASYNC_addr[3]), .CK(CLK), .RN(RST), .Q(
        \SYNC[3][0] ) );
  DFFRQX2M \SYNC_reg[2][0]  ( .D(ASYNC_addr[2]), .CK(CLK), .RN(RST), .Q(
        \SYNC[2][0] ) );
  DFFRQX2M \SYNC_reg[1][0]  ( .D(ASYNC_addr[1]), .CK(CLK), .RN(RST), .Q(
        \SYNC[1][0] ) );
  DFFRQX2M \SYNC_reg[0][0]  ( .D(ASYNC_addr[0]), .CK(CLK), .RN(RST), .Q(
        \SYNC[0][0] ) );
endmodule


module SYNC_ADDR_WIDTH3_1 ( ASYNC_addr, CLK, RST, SYNC_addr );
  input [3:0] ASYNC_addr;
  output [3:0] SYNC_addr;
  input CLK, RST;
  wire   \SYNC[3][0] , \SYNC[2][0] , \SYNC[1][0] , \SYNC[0][0] ;

  DFFRQX2M \SYNC_reg[3][1]  ( .D(\SYNC[3][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[3]) );
  DFFRQX2M \SYNC_reg[2][1]  ( .D(\SYNC[2][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[2]) );
  DFFRQX2M \SYNC_reg[1][1]  ( .D(\SYNC[1][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[1]) );
  DFFRQX2M \SYNC_reg[0][1]  ( .D(\SYNC[0][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_addr[0]) );
  DFFRQX2M \SYNC_reg[3][0]  ( .D(ASYNC_addr[3]), .CK(CLK), .RN(RST), .Q(
        \SYNC[3][0] ) );
  DFFRQX2M \SYNC_reg[2][0]  ( .D(ASYNC_addr[2]), .CK(CLK), .RN(RST), .Q(
        \SYNC[2][0] ) );
  DFFRQX2M \SYNC_reg[1][0]  ( .D(ASYNC_addr[1]), .CK(CLK), .RN(RST), .Q(
        \SYNC[1][0] ) );
  DFFRQX2M \SYNC_reg[0][0]  ( .D(ASYNC_addr[0]), .CK(CLK), .RN(RST), .Q(
        \SYNC[0][0] ) );
endmodule


module ASYC_FIFO ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, FULL, 
        EMPTY, RD_DATA );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2;
  wire   [2:0] W_addr;
  wire   [2:0] R_addr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] R_ptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] W_ptr;

  FIFO_Memory_BUS_WIDTH8_ADDR_WIDTH3_DEPTH8 FIFO_memory ( .W_data(WR_DATA), 
        .W_addr(W_addr), .R_addr(R_addr), .W_inc(W_INC), .W_full(FULL), 
        .W_CLK(W_CLK), .W_RST(n1), .R_data(RD_DATA) );
  Rptr_empty_ADDR_WIDTH3 Rptr_empty ( .rq2_wptr(rq2_wptr), .R_inc(R_INC), 
        .R_CLK(R_CLK), .R_rst_n(R_RST), .R_addr(R_addr), .R_ptr(R_ptr), 
        .R_empty(EMPTY) );
  Wptr_full_ADDR_WIDTH3 Wptr_full ( .wq2_rptr(wq2_rptr), .W_inc(W_INC), 
        .W_CLK(W_CLK), .W_rst_n(n1), .W_addr(W_addr), .W_ptr(W_ptr), .W_full(
        FULL) );
  SYNC_ADDR_WIDTH3_0 SYNC_r2w ( .ASYNC_addr(R_ptr), .CLK(W_CLK), .RST(n1), 
        .SYNC_addr(wq2_rptr) );
  SYNC_ADDR_WIDTH3_1 SYNC_w2r ( .ASYNC_addr(W_ptr), .CLK(R_CLK), .RST(R_RST), 
        .SYNC_addr(rq2_wptr) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
endmodule


module Pulse_Gen ( In_Sig, CLK, RST, Pulse );
  input In_Sig, CLK, RST;
  output Pulse;

  wire   [1:0] Pulse_reg;

  DFFRQX2M \Pulse_reg_reg[0]  ( .D(In_Sig), .CK(CLK), .RN(RST), .Q(
        Pulse_reg[0]) );
  DFFRQX2M \Pulse_reg_reg[1]  ( .D(Pulse_reg[0]), .CK(CLK), .RN(RST), .Q(
        Pulse_reg[1]) );
  NOR2BX2M U3 ( .AN(Pulse_reg[0]), .B(Pulse_reg[1]), .Y(Pulse) );
endmodule


module TX_FSM ( Data_Valid, ser_done, PAR_EN, CLK, RST, ser_en, mux_sel, Busy
 );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, PAR_EN, CLK, RST;
  output ser_en, Busy;
  wire   n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n4
;
  wire   [2:0] Current_State;

  DFFRQX2M \Current_State_reg[1]  ( .D(n14), .CK(CLK), .RN(RST), .Q(
        Current_State[1]) );
  DFFRQX2M \Current_State_reg[2]  ( .D(n15), .CK(CLK), .RN(RST), .Q(
        Current_State[2]) );
  DFFRX1M \Current_State_reg[0]  ( .D(n16), .CK(CLK), .RN(RST), .QN(n3) );
  NAND2X2M U3 ( .A(n5), .B(n2), .Y(n6) );
  NAND2BX2M U4 ( .AN(n11), .B(n6), .Y(ser_en) );
  NAND2BX2M U5 ( .AN(ser_en), .B(n12), .Y(Busy) );
  OR2X2M U6 ( .A(n5), .B(mux_sel[0]), .Y(n14) );
  AOI2B1X1M U7 ( .A1N(n13), .A0(n12), .B0(Current_State[2]), .Y(mux_sel[0]) );
  NOR2X2M U8 ( .A(Current_State[1]), .B(n3), .Y(n13) );
  NAND2X2M U9 ( .A(Current_State[1]), .B(n3), .Y(n12) );
  NOR2X2M U10 ( .A(n4), .B(n3), .Y(n5) );
  NOR2X2M U11 ( .A(n12), .B(Current_State[2]), .Y(n9) );
  NAND2BX2M U12 ( .AN(n9), .B(n6), .Y(mux_sel[1]) );
  INVX2M U13 ( .A(Current_State[2]), .Y(n2) );
  INVX2M U14 ( .A(Current_State[1]), .Y(n4) );
  NOR3X2M U15 ( .A(Current_State[1]), .B(Current_State[2]), .C(n3), .Y(n11) );
  OAI221X1M U16 ( .A0(ser_done), .A1(n6), .B0(n3), .B1(n8), .C0(n10), .Y(n16)
         );
  AOI31X2M U17 ( .A0(n4), .A1(n2), .A2(Data_Valid), .B0(n11), .Y(n10) );
  OAI31X1M U18 ( .A0(n1), .A1(PAR_EN), .A2(n6), .B0(n7), .Y(n15) );
  INVX2M U19 ( .A(ser_done), .Y(n1) );
  NOR2BX2M U20 ( .AN(n8), .B(n9), .Y(n7) );
  NAND2X2M U21 ( .A(Current_State[2]), .B(n12), .Y(n8) );
endmodule


module Serializer ( P_Data, ser_en, Data_Valid, CLK, RST, ser_done, ser_data
 );
  input [7:0] P_Data;
  input ser_en, Data_Valid, CLK, RST;
  output ser_done, ser_data;
  wire   N26, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n1, n2, n3, n4, n19;
  wire   [7:0] serializer;
  wire   [3:0] count;

  DFFRQX2M \serializer_reg[7]  ( .D(n29), .CK(CLK), .RN(RST), .Q(serializer[7]) );
  DFFRQX2M \serializer_reg[6]  ( .D(n23), .CK(CLK), .RN(RST), .Q(serializer[6]) );
  DFFRQX2M \serializer_reg[5]  ( .D(n24), .CK(CLK), .RN(RST), .Q(serializer[5]) );
  DFFRQX2M \serializer_reg[4]  ( .D(n25), .CK(CLK), .RN(RST), .Q(serializer[4]) );
  DFFRQX2M \serializer_reg[3]  ( .D(n26), .CK(CLK), .RN(RST), .Q(serializer[3]) );
  DFFRQX2M \serializer_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(serializer[2]) );
  DFFRQX2M \serializer_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(serializer[1]) );
  DFFRQX2M ser_done_reg ( .D(N26), .CK(CLK), .RN(RST), .Q(ser_done) );
  DFFRX1M \serializer_reg[0]  ( .D(n22), .CK(CLK), .RN(RST), .QN(n5) );
  DFFRQX2M \count_reg[2]  ( .D(n30), .CK(CLK), .RN(RST), .Q(count[2]) );
  DFFRQX2M \count_reg[0]  ( .D(n33), .CK(CLK), .RN(RST), .Q(count[0]) );
  DFFRQX2M \count_reg[3]  ( .D(n32), .CK(CLK), .RN(RST), .Q(count[3]) );
  DFFRQX2M \count_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(count[1]) );
  DFFRQX2M ser_data_reg ( .D(n21), .CK(CLK), .RN(RST), .Q(ser_data) );
  OR2X2M U3 ( .A(n9), .B(n2), .Y(n7) );
  INVX2M U4 ( .A(n6), .Y(n2) );
  AOI21BX2M U5 ( .A0(n3), .A1(n2), .B0N(n7), .Y(n18) );
  NOR2BX2M U6 ( .AN(Data_Valid), .B(ser_en), .Y(n9) );
  NAND2X2M U7 ( .A(ser_en), .B(n20), .Y(n6) );
  NAND4X2M U8 ( .A(count[3]), .B(n3), .C(n19), .D(n4), .Y(n20) );
  OAI21X2M U9 ( .A0(count[1]), .A1(n6), .B0(n18), .Y(n16) );
  AO22X1M U10 ( .A0(n2), .A1(N26), .B0(count[3]), .B1(n1), .Y(n32) );
  AO21XLM U11 ( .A0(n2), .A1(n4), .B0(n16), .Y(n1) );
  OAI32X1M U12 ( .A0(n3), .A1(count[1]), .A2(n6), .B0(n18), .B1(n19), .Y(n31)
         );
  OAI22X1M U13 ( .A0(n7), .A1(n3), .B0(count[0]), .B1(n6), .Y(n33) );
  OAI2BB2X1M U14 ( .B0(n6), .B1(n5), .A0N(ser_data), .A1N(n6), .Y(n21) );
  OAI2B1X2M U15 ( .A1N(serializer[1]), .A0(n7), .B0(n15), .Y(n28) );
  AOI22X1M U16 ( .A0(P_Data[1]), .A1(n9), .B0(serializer[2]), .B1(n2), .Y(n15)
         );
  OAI2B1X2M U17 ( .A1N(serializer[2]), .A0(n7), .B0(n14), .Y(n27) );
  AOI22X1M U18 ( .A0(P_Data[2]), .A1(n9), .B0(serializer[3]), .B1(n2), .Y(n14)
         );
  OAI2B1X2M U19 ( .A1N(serializer[3]), .A0(n7), .B0(n13), .Y(n26) );
  AOI22X1M U20 ( .A0(P_Data[3]), .A1(n9), .B0(serializer[4]), .B1(n2), .Y(n13)
         );
  OAI2B1X2M U21 ( .A1N(serializer[4]), .A0(n7), .B0(n12), .Y(n25) );
  AOI22X1M U22 ( .A0(P_Data[4]), .A1(n9), .B0(serializer[5]), .B1(n2), .Y(n12)
         );
  OAI2B1X2M U23 ( .A1N(serializer[5]), .A0(n7), .B0(n11), .Y(n24) );
  AOI22X1M U24 ( .A0(P_Data[5]), .A1(n9), .B0(serializer[6]), .B1(n2), .Y(n11)
         );
  OAI2B1X2M U25 ( .A1N(serializer[6]), .A0(n7), .B0(n10), .Y(n23) );
  AOI22X1M U26 ( .A0(P_Data[6]), .A1(n9), .B0(serializer[7]), .B1(n2), .Y(n10)
         );
  OAI21X2M U27 ( .A0(n5), .A1(n7), .B0(n8), .Y(n22) );
  AOI22X1M U28 ( .A0(P_Data[0]), .A1(n9), .B0(serializer[1]), .B1(n2), .Y(n8)
         );
  INVX2M U29 ( .A(count[0]), .Y(n3) );
  INVX2M U30 ( .A(count[2]), .Y(n4) );
  INVX2M U31 ( .A(count[1]), .Y(n19) );
  OAI2BB1X2M U32 ( .A0N(n16), .A1N(count[2]), .B0(n17), .Y(n30) );
  NAND4X2M U33 ( .A(count[1]), .B(count[0]), .C(n2), .D(n4), .Y(n17) );
  AO2B2X2M U34 ( .B0(P_Data[7]), .B1(n9), .A0(serializer[7]), .A1N(n9), .Y(n29) );
  NOR4X1M U35 ( .A(n4), .B(n19), .C(n3), .D(count[3]), .Y(N26) );
endmodule


module Parity_Calc ( P_Data, Data_Valid, Busy, PAR_TYP, CLK, RST, par_bit );
  input [7:0] P_Data;
  input Data_Valid, Busy, PAR_TYP, CLK, RST;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(par_bit) );
  XOR3XLM U2 ( .A(P_Data[5]), .B(P_Data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
  NAND2BX2M U6 ( .AN(Busy), .B(Data_Valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_Data[1]), .B(P_Data[0]), .C(n5), .Y(n4) );
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


module UART_TX ( P_Data, Data_Valid, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, Busy
 );
  input [7:0] P_Data;
  input Data_Valid, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_done, ser_en, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  TX_FSM fsm ( .Data_Valid(Data_Valid), .ser_done(ser_done), .PAR_EN(PAR_EN), 
        .CLK(CLK), .RST(n1), .ser_en(ser_en), .mux_sel(mux_sel), .Busy(Busy)
         );
  Serializer serializer ( .P_Data(P_Data), .ser_en(ser_en), .Data_Valid(
        Data_Valid), .CLK(CLK), .RST(n1), .ser_done(ser_done), .ser_data(
        ser_data) );
  Parity_Calc parit_calc ( .P_Data(P_Data), .Data_Valid(Data_Valid), .Busy(
        Busy), .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n1), .par_bit(par_bit) );
  MUX mux ( .ser_data(ser_data), .par_bit(par_bit), .mux_sel(mux_sel), 
        .TX_OUT(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module Parity_Check ( Par_chk_en, P_DATA, Sampled_bit, PAR_TYP, PAR_EN, CLK, 
        RST, Par_err );
  input [7:0] P_DATA;
  input Par_chk_en, Sampled_bit, PAR_TYP, PAR_EN, CLK, RST;
  output Par_err;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M Par_err_reg ( .D(n9), .CK(CLK), .RN(RST), .Q(Par_err) );
  NOR2BX2M U3 ( .AN(PAR_EN), .B(n2), .Y(n9) );
  AOI22X1M U4 ( .A0(Par_chk_en), .A1(n3), .B0(Par_err), .B1(n1), .Y(n2) );
  INVX2M U5 ( .A(Par_chk_en), .Y(n1) );
  XOR3XLM U6 ( .A(n4), .B(n5), .C(n6), .Y(n3) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n6) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  XOR3XLM U9 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n8), .Y(n5) );
  XNOR2X2M U10 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n8) );
  CLKXOR2X2M U11 ( .A(Sampled_bit), .B(PAR_TYP), .Y(n4) );
endmodule


module Strt_Check ( Strt_chk_en, Sampled_bit, CLK, RST, Strt_glitch );
  input Strt_chk_en, Sampled_bit, CLK, RST;
  output Strt_glitch;
  wire   n1;

  DFFRQX2M Strt_glitch_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(Strt_glitch) );
  AO2B2X2M U2 ( .B0(Strt_chk_en), .B1(Sampled_bit), .A0(Strt_glitch), .A1N(
        Strt_chk_en), .Y(n1) );
endmodule


module Stop_Check ( Stp_chk_en, Sampled_bit, CLK, RST, Stp_err );
  input Stp_chk_en, Sampled_bit, CLK, RST;
  output Stp_err;
  wire   n2, n1;

  DFFRQX2M Stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(Stp_err) );
  OAI2BB2X1M U2 ( .B0(Sampled_bit), .B1(n1), .A0N(Stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(Stp_chk_en), .Y(n1) );
endmodule


module Edge_bit_counter ( Enable, Prescale, CLK, RST, Bit_cnt, Edge_cnt );
  input [5:0] Prescale;
  output [3:0] Bit_cnt;
  output [4:0] Edge_cnt;
  input Enable, CLK, RST;
  wire   N39, N40, N41, N76, N77, N78, N79, N80, n5, n6, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         \r76/carry[4] , \r76/carry[3] , \r76/carry[2] , n1, n2, n3, n4, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n48;

  DFFRQX2M \Bit_cnt_reg[3]  ( .D(n46), .CK(CLK), .RN(RST), .Q(Bit_cnt[3]) );
  DFFRQX2M \Bit_cnt_reg[1]  ( .D(n45), .CK(CLK), .RN(RST), .Q(Bit_cnt[1]) );
  DFFRQX2M \Bit_cnt_reg[2]  ( .D(n44), .CK(CLK), .RN(RST), .Q(Bit_cnt[2]) );
  DFFRQX2M \Edge_cnt_reg[4]  ( .D(N80), .CK(CLK), .RN(RST), .Q(Edge_cnt[4]) );
  DFFRQX2M \Bit_cnt_reg[0]  ( .D(n47), .CK(CLK), .RN(RST), .Q(Bit_cnt[0]) );
  DFFRQX2M \Edge_cnt_reg[2]  ( .D(N78), .CK(CLK), .RN(RST), .Q(Edge_cnt[2]) );
  DFFRQX2M \Edge_cnt_reg[3]  ( .D(N79), .CK(CLK), .RN(RST), .Q(Edge_cnt[3]) );
  DFFRX1M \Edge_cnt_reg[0]  ( .D(N76), .CK(CLK), .RN(RST), .Q(Edge_cnt[0]), 
        .QN(n6) );
  DFFRX1M \Edge_cnt_reg[1]  ( .D(N77), .CK(CLK), .RN(RST), .Q(Edge_cnt[1]), 
        .QN(n5) );
  NOR4X1M U3 ( .A(n12), .B(n10), .C(Bit_cnt[0]), .D(Bit_cnt[2]), .Y(n37) );
  INVX2M U4 ( .A(n17), .Y(n2) );
  NAND2X2M U5 ( .A(n3), .B(n24), .Y(n17) );
  INVX2M U6 ( .A(n21), .Y(n4) );
  OAI31X1M U7 ( .A0(n16), .A1(n28), .A2(n7), .B0(n31), .Y(n24) );
  INVX2M U8 ( .A(n36), .Y(n7) );
  AOI33X2M U9 ( .A0(n32), .A1(n33), .A2(n34), .B0(n35), .B1(n26), .B2(n14), 
        .Y(n31) );
  OAI211X2M U10 ( .A0(n25), .A1(n26), .B0(n8), .C0(n27), .Y(n21) );
  INVX2M U11 ( .A(n38), .Y(n8) );
  AOI211X2M U12 ( .A0(n28), .A1(n29), .B0(n24), .C0(n30), .Y(n27) );
  OAI32X1M U13 ( .A0(n14), .A1(n29), .A2(n34), .B0(n33), .B1(n13), .Y(n38) );
  NAND2X2M U14 ( .A(n35), .B(n37), .Y(n26) );
  NAND2X2M U15 ( .A(n32), .B(n37), .Y(n33) );
  AND2X2M U16 ( .A(n37), .B(n36), .Y(n28) );
  NAND2X2M U17 ( .A(n3), .B(n40), .Y(n39) );
  OAI222X1M U18 ( .A0(n35), .A1(n25), .B0(n32), .B1(n13), .C0(n36), .C1(n16), 
        .Y(n40) );
  NOR2BX2M U19 ( .AN(N41), .B(n39), .Y(N79) );
  NOR2BX2M U20 ( .AN(N40), .B(n39), .Y(N78) );
  NOR2BX2M U21 ( .AN(N39), .B(n39), .Y(N77) );
  INVX2M U22 ( .A(n30), .Y(n3) );
  INVX2M U23 ( .A(n34), .Y(n13) );
  INVX2M U24 ( .A(n29), .Y(n16) );
  INVX2M U25 ( .A(n25), .Y(n14) );
  OAI32X1M U26 ( .A0(n17), .A1(Bit_cnt[1]), .A2(n9), .B0(n20), .B1(n10), .Y(
        n45) );
  AOI21X2M U27 ( .A0(n2), .A1(n9), .B0(n4), .Y(n20) );
  OAI32X1M U28 ( .A0(n17), .A1(Bit_cnt[2]), .A2(n18), .B0(n19), .B1(n11), .Y(
        n44) );
  AOI21X2M U29 ( .A0(n2), .A1(n18), .B0(n4), .Y(n19) );
  NOR4BX1M U30 ( .AN(Edge_cnt[2]), .B(n5), .C(n6), .D(Edge_cnt[4]), .Y(n41) );
  OAI22X1M U31 ( .A0(n12), .A1(n21), .B0(n22), .B1(n17), .Y(n46) );
  XNOR2X2M U32 ( .A(Bit_cnt[3]), .B(n23), .Y(n22) );
  NOR2X2M U33 ( .A(n18), .B(n11), .Y(n23) );
  OAI22X1M U34 ( .A0(n9), .A1(n21), .B0(Bit_cnt[0]), .B1(n17), .Y(n47) );
  NAND3BX2M U35 ( .AN(Prescale[0]), .B(Enable), .C(n43), .Y(n30) );
  NOR2X2M U36 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n43) );
  NOR2BX2M U37 ( .AN(n41), .B(Edge_cnt[3]), .Y(n36) );
  AND4X2M U38 ( .A(Edge_cnt[4]), .B(Edge_cnt[3]), .C(n42), .D(Edge_cnt[2]), 
        .Y(n32) );
  NOR2X2M U39 ( .A(n6), .B(n5), .Y(n42) );
  AND2X2M U40 ( .A(n41), .B(Edge_cnt[3]), .Y(n35) );
  INVX2M U41 ( .A(Bit_cnt[1]), .Y(n10) );
  INVX2M U42 ( .A(Bit_cnt[3]), .Y(n12) );
  NAND2X2M U43 ( .A(Bit_cnt[0]), .B(Bit_cnt[1]), .Y(n18) );
  NOR2X2M U44 ( .A(n1), .B(n39), .Y(N80) );
  XNOR2X2M U45 ( .A(\r76/carry[4] ), .B(Edge_cnt[4]), .Y(n1) );
  NOR2X2M U46 ( .A(Edge_cnt[0]), .B(n39), .Y(N76) );
  ADDHX1M U47 ( .A(Edge_cnt[1]), .B(Edge_cnt[0]), .CO(\r76/carry[2] ), .S(N39)
         );
  ADDHX1M U48 ( .A(Edge_cnt[2]), .B(\r76/carry[2] ), .CO(\r76/carry[3] ), .S(
        N40) );
  ADDHX1M U49 ( .A(Edge_cnt[3]), .B(\r76/carry[3] ), .CO(\r76/carry[4] ), .S(
        N41) );
  INVX2M U50 ( .A(Bit_cnt[0]), .Y(n9) );
  INVX2M U51 ( .A(Bit_cnt[2]), .Y(n11) );
  NOR3X2M U52 ( .A(Prescale[3]), .B(Prescale[4]), .C(n15), .Y(n34) );
  NOR3X2M U53 ( .A(Prescale[4]), .B(Prescale[5]), .C(n48), .Y(n29) );
  NAND3X2M U54 ( .A(n48), .B(n15), .C(Prescale[4]), .Y(n25) );
  INVX2M U55 ( .A(Prescale[3]), .Y(n48) );
  INVX2M U56 ( .A(Prescale[5]), .Y(n15) );
endmodule


module Data_sampling ( RX_IN, Dat_samp_en, Edge_cnt, Prescale, CLK, RST, 
        Sampled_bit );
  input [4:0] Edge_cnt;
  input [5:0] Prescale;
  input RX_IN, Dat_samp_en, CLK, RST;
  output Sampled_bit;
  wire   N30, n1, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13;
  wire   [2:0] Sample;
  assign N30 = RX_IN;

  DFFRQX2M \Sample_reg[0]  ( .D(n30), .CK(CLK), .RN(RST), .Q(Sample[0]) );
  DFFRQX2M \Sample_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(Sample[1]) );
  DFFRX1M \Sample_reg[2]  ( .D(n32), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRQX2M Sampled_bit_reg ( .D(n29), .CK(CLK), .RN(RST), .Q(Sampled_bit) );
  OAI22X1M U2 ( .A0(n3), .A1(n19), .B0(n2), .B1(n4), .Y(n30) );
  INVX2M U3 ( .A(n19), .Y(n2) );
  OAI2BB2X1M U4 ( .B0(n2), .B1(n1), .A0N(N30), .A1N(n2), .Y(n32) );
  OAI33X2M U5 ( .A0(n7), .A1(Prescale[3]), .A2(n11), .B0(n12), .B1(Prescale[4]), .B2(Edge_cnt[2]), .Y(n23) );
  NOR4X1M U6 ( .A(Prescale[3]), .B(Edge_cnt[2]), .C(n8), .D(n11), .Y(n26) );
  NOR4X1M U7 ( .A(Prescale[4]), .B(Edge_cnt[3]), .C(n7), .D(n12), .Y(n27) );
  NAND2X2M U8 ( .A(n16), .B(n20), .Y(n19) );
  OAI33X2M U9 ( .A0(n6), .A1(Edge_cnt[1]), .A2(Edge_cnt[0]), .B0(n5), .B1(
        Edge_cnt[4]), .B2(n21), .Y(n20) );
  INVX2M U10 ( .A(n17), .Y(n6) );
  AOI33X2M U11 ( .A0(Edge_cnt[3]), .A1(n22), .A2(Edge_cnt[2]), .B0(n8), .B1(
        n10), .B2(n23), .Y(n21) );
  OAI22X1M U12 ( .A0(n1), .A1(n19), .B0(n2), .B1(n3), .Y(n31) );
  INVX2M U13 ( .A(Edge_cnt[3]), .Y(n8) );
  INVX2M U14 ( .A(Edge_cnt[2]), .Y(n7) );
  NAND2X2M U15 ( .A(n24), .B(n25), .Y(n17) );
  NAND4X2M U16 ( .A(Edge_cnt[4]), .B(n22), .C(n7), .D(n8), .Y(n25) );
  OAI211X2M U17 ( .A0(n26), .A1(n27), .B0(n9), .C0(n10), .Y(n24) );
  INVX2M U18 ( .A(Edge_cnt[4]), .Y(n9) );
  AND3X2M U19 ( .A(n13), .B(Dat_samp_en), .C(n28), .Y(n16) );
  INVX2M U20 ( .A(Prescale[0]), .Y(n13) );
  NOR2X2M U21 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n28) );
  OAI2BB2X1M U22 ( .B0(n14), .B1(n15), .A0N(Sampled_bit), .A1N(n15), .Y(n29)
         );
  AOI21X2M U23 ( .A0(Sample[1]), .A1(Sample[0]), .B0(n18), .Y(n14) );
  NAND4X2M U24 ( .A(Edge_cnt[0]), .B(n16), .C(n17), .D(n5), .Y(n15) );
  AOI21X2M U25 ( .A0(n3), .A1(n4), .B0(n1), .Y(n18) );
  INVX2M U26 ( .A(Edge_cnt[1]), .Y(n5) );
  INVX2M U27 ( .A(Sample[1]), .Y(n3) );
  INVX2M U28 ( .A(Sample[0]), .Y(n4) );
  NOR3X2M U29 ( .A(Prescale[3]), .B(Prescale[4]), .C(n10), .Y(n22) );
  INVX2M U30 ( .A(Prescale[4]), .Y(n11) );
  INVX2M U31 ( .A(Prescale[3]), .Y(n12) );
  INVX2M U32 ( .A(Prescale[5]), .Y(n10) );
endmodule


module Deserializer ( Deser_en, Sampled_bit, Edge_cnt, Prescale, CLK, RST, 
        P_DATA );
  input [4:0] Edge_cnt;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input Deser_en, Sampled_bit, CLK, RST;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29;

  DFFRQX2M \P_DATA_reg[0]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n22), .A1(n29), .B0(n1), .B1(n28), .Y(n11) );
  OAI22X1M U4 ( .A0(n22), .A1(n28), .B0(n1), .B1(n27), .Y(n12) );
  OAI22X1M U5 ( .A0(n22), .A1(n27), .B0(n1), .B1(n26), .Y(n13) );
  OAI22X1M U6 ( .A0(n22), .A1(n26), .B0(n1), .B1(n25), .Y(n14) );
  OAI22X1M U7 ( .A0(n22), .A1(n25), .B0(n1), .B1(n24), .Y(n15) );
  OAI22X1M U8 ( .A0(n22), .A1(n24), .B0(n1), .B1(n23), .Y(n16) );
  INVX2M U9 ( .A(n1), .Y(n22) );
  NAND2X2M U10 ( .A(N8), .B(Deser_en), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n29), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U12 ( .B0(n22), .B1(n23), .A0N(Sampled_bit), .A1N(n22), .Y(n17)
         );
  INVX2M U13 ( .A(P_DATA[2]), .Y(n28) );
  INVX2M U14 ( .A(P_DATA[6]), .Y(n24) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n23) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n27) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n29) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n26) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n25) );
  OR2X2M U20 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  CLKINVX1M U21 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U22 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U23 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U24 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U25 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U26 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U27 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U28 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U29 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U30 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U31 ( .AN(Edge_cnt[0]), .B(N1), .Y(n6) );
  OAI2B2X1M U32 ( .A1N(N2), .A0(n6), .B0(Edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U33 ( .AN(N1), .B(Edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U34 ( .A1N(Edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n8) );
  NAND4BBX1M U35 ( .AN(N7), .BN(N6), .C(n9), .D(n8), .Y(n21) );
  CLKXOR2X2M U36 ( .A(N5), .B(Edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U37 ( .A(N3), .B(Edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U38 ( .A(N4), .B(Edge_cnt[3]), .Y(n18) );
  NOR4X1M U39 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N8) );
endmodule


module RX_FSM ( RX_IN, Prescale, PAR_EN, Edge_cnt, Bit_cnt, Par_err, 
        Strt_glitch, Stp_err, CLK, RST, Enable, Dat_samp_en, Par_chk_en, 
        Strt_chk_en, Stp_chk_en, Deser_en, Data_valid );
  input [5:0] Prescale;
  input [4:0] Edge_cnt;
  input [3:0] Bit_cnt;
  input RX_IN, PAR_EN, Par_err, Strt_glitch, Stp_err, CLK, RST;
  output Enable, Dat_samp_en, Par_chk_en, Strt_chk_en, Stp_chk_en, Deser_en,
         Data_valid;
  wire   N35, N36, N37, N38, N39, N40, N41, n24, n25, n26, n27, n28, n29, n30,
         n31, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n32, n33;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;

  DFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(CLK), .RN(RST), .Q(
        Current_State[1]) );
  DFFRQX2M \Current_State_reg[2]  ( .D(Next_State[2]), .CK(CLK), .RN(RST), .Q(
        Current_State[2]) );
  DFFRX1M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(CLK), .RN(RST), .Q(
        Current_State[0]), .QN(n18) );
  NOR2X2M U3 ( .A(n33), .B(N41), .Y(n24) );
  INVX2M U4 ( .A(N41), .Y(n23) );
  INVX2M U5 ( .A(Stp_chk_en), .Y(n20) );
  INVX2M U6 ( .A(Deser_en), .Y(n17) );
  INVX2M U7 ( .A(Par_chk_en), .Y(n19) );
  INVX2M U8 ( .A(Strt_chk_en), .Y(n16) );
  NOR3X2M U9 ( .A(n21), .B(n18), .C(n22), .Y(Data_valid) );
  OAI221X1M U10 ( .A0(RX_IN), .A1(n29), .B0(n32), .B1(n17), .C0(n30), .Y(
        Next_State[0]) );
  AOI31X2M U11 ( .A0(n21), .A1(n22), .A2(n18), .B0(Data_valid), .Y(n29) );
  INVX2M U12 ( .A(n26), .Y(n32) );
  AOI31X2M U13 ( .A0(n23), .A1(n33), .A2(Stp_chk_en), .B0(n31), .Y(n30) );
  OAI211X2M U14 ( .A0(n24), .A1(n20), .B0(n27), .C0(n15), .Y(Next_State[1]) );
  OAI2BB1X2M U15 ( .A0N(n23), .A1N(Par_err), .B0(Par_chk_en), .Y(n27) );
  INVX2M U16 ( .A(n28), .Y(n15) );
  OAI31X1M U17 ( .A0(N41), .A1(Strt_glitch), .A2(n16), .B0(n17), .Y(n28) );
  INVX2M U18 ( .A(Edge_cnt[1]), .Y(n14) );
  NOR3X2M U19 ( .A(Current_State[0]), .B(Current_State[2]), .C(n21), .Y(
        Par_chk_en) );
  NOR3X2M U20 ( .A(n21), .B(Current_State[0]), .C(n22), .Y(Stp_chk_en) );
  NOR3X2M U21 ( .A(n18), .B(Current_State[2]), .C(n21), .Y(Deser_en) );
  NOR3X2M U22 ( .A(Current_State[1]), .B(Current_State[2]), .C(n18), .Y(
        Strt_chk_en) );
  OAI21BX1M U23 ( .A0(n24), .A1(n20), .B0N(n25), .Y(Next_State[2]) );
  OAI33X2M U24 ( .A0(n19), .A1(Par_err), .A2(N41), .B0(n17), .B1(PAR_EN), .B2(
        n26), .Y(n25) );
  AOI21X2M U25 ( .A0(Strt_glitch), .A1(n23), .B0(n16), .Y(n31) );
  INVX2M U26 ( .A(Current_State[1]), .Y(n21) );
  INVX2M U27 ( .A(Current_State[2]), .Y(n22) );
  OAI31X1M U28 ( .A0(Bit_cnt[0]), .A1(Bit_cnt[2]), .A2(Bit_cnt[1]), .B0(
        Bit_cnt[3]), .Y(n26) );
  INVX2M U29 ( .A(Stp_err), .Y(n33) );
  OR2X2M U30 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  BUFX2M U31 ( .A(Enable), .Y(Dat_samp_en) );
  NAND4X2M U32 ( .A(n17), .B(n19), .C(n20), .D(n16), .Y(Enable) );
  OAI2BB1X1M U33 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N35) );
  OR2X1M U34 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U35 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N36) );
  OR2X1M U36 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U37 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N37) );
  OR2X1M U38 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U39 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N38) );
  NOR2X1M U40 ( .A(n5), .B(Prescale[5]), .Y(N40) );
  AO21XLM U41 ( .A0(n5), .A1(Prescale[5]), .B0(N40), .Y(N39) );
  XNOR2X1M U42 ( .A(N37), .B(Edge_cnt[3]), .Y(n13) );
  XNOR2X1M U43 ( .A(N36), .B(Edge_cnt[2]), .Y(n12) );
  XNOR2X1M U44 ( .A(N38), .B(Edge_cnt[4]), .Y(n11) );
  NOR2X1M U45 ( .A(Prescale[0]), .B(Edge_cnt[0]), .Y(n6) );
  OAI22X1M U46 ( .A0(n6), .A1(n14), .B0(N35), .B1(n6), .Y(n9) );
  CLKNAND2X2M U47 ( .A(Edge_cnt[0]), .B(Prescale[0]), .Y(n7) );
  AOI22X1M U48 ( .A0(n7), .A1(n14), .B0(n7), .B1(N35), .Y(n8) );
  NOR4BX1M U49 ( .AN(n9), .B(N40), .C(N39), .D(n8), .Y(n10) );
  NAND4X1M U50 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N41) );
endmodule


module UART_RX ( RX_IN, PAR_EN, PAR_TYP, CLK, RST, Prescale, Parity_Error, 
        Stop_Error, P_DATA, Data_valid );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output Parity_Error, Stop_Error, Data_valid;
  wire   Par_chk_en, Sampled_bit, Strt_chk_en, Strt_glitch, Stp_chk_en, Enable,
         Dat_samp_en, Deser_en, n1, n2;
  wire   [3:0] Bit_cnt;
  wire   [4:0] Edge_cnt;

  Parity_Check U0_parity_check ( .Par_chk_en(Par_chk_en), .P_DATA(P_DATA), 
        .Sampled_bit(Sampled_bit), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .CLK(
        CLK), .RST(n1), .Par_err(Parity_Error) );
  Strt_Check U0_strt_check ( .Strt_chk_en(Strt_chk_en), .Sampled_bit(
        Sampled_bit), .CLK(CLK), .RST(n1), .Strt_glitch(Strt_glitch) );
  Stop_Check U0_stop_check ( .Stp_chk_en(Stp_chk_en), .Sampled_bit(Sampled_bit), .CLK(CLK), .RST(n1), .Stp_err(Stop_Error) );
  Edge_bit_counter U0_edge_bit_counter ( .Enable(Enable), .Prescale(Prescale), 
        .CLK(CLK), .RST(n1), .Bit_cnt(Bit_cnt), .Edge_cnt(Edge_cnt) );
  Data_sampling U0_data_sampling ( .RX_IN(RX_IN), .Dat_samp_en(Dat_samp_en), 
        .Edge_cnt(Edge_cnt), .Prescale(Prescale), .CLK(CLK), .RST(n1), 
        .Sampled_bit(Sampled_bit) );
  Deserializer U0_deserializer ( .Deser_en(Deser_en), .Sampled_bit(Sampled_bit), .Edge_cnt(Edge_cnt), .Prescale(Prescale), .CLK(CLK), .RST(n1), .P_DATA(
        P_DATA) );
  RX_FSM U0_FSM ( .RX_IN(RX_IN), .Prescale(Prescale), .PAR_EN(PAR_EN), 
        .Edge_cnt(Edge_cnt), .Bit_cnt(Bit_cnt), .Par_err(Parity_Error), 
        .Strt_glitch(Strt_glitch), .Stp_err(Stop_Error), .CLK(CLK), .RST(n1), 
        .Enable(Enable), .Dat_samp_en(Dat_samp_en), .Par_chk_en(Par_chk_en), 
        .Strt_chk_en(Strt_chk_en), .Stp_chk_en(Stp_chk_en), .Deser_en(Deser_en), .Data_valid(Data_valid) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_TOP ( UART_RX_IN, REF_CLK, UART_CLK, RST_N, UART_TX_O, parity_error, 
        framing_error );
  input UART_RX_IN, REF_CLK, UART_CLK, RST_N;
  output UART_TX_O, parity_error, framing_error;
  wire   OUT_Valid, Sync_Valid, RdData_Valid, FIFO_FULL, SYNC_RST_1, ALU_EN,
         CLK_EN, WrEN, RdEN, Wr_INC, ALU_CLK, SYNC_RST_2, RX_D_VLD, RX_CLK,
         TX_CLK, Rd_pulse, FIFO_EMPTY, Busy, n1, n2, n3, n4, n5, n6, n7;
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

  SYS_CTRL U_SYS_CTRL ( .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), .RX_P_Data(
        Sync_DATA), .RX_D_VLD(Sync_Valid), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .FIFO_FULL(FIFO_FULL), .CLK(REF_CLK), .RST(n6), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), .Address(Address), 
        .WrEN(WrEN), .RdEN(RdEN), .M_Wr_Data(M_Wr_Data), .F_Wr_Data(F_Wr_Data), 
        .Wr_INC(Wr_INC) );
  ALU U_ALU ( .A(A), .B(B), .ALU_FUN(ALU_FUN), .Enable(ALU_EN), .CLK(ALU_CLK), 
        .RST(n6), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid) );
  Clock_Gating U_Clock_Gating ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(
        ALU_CLK) );
  Reg_File U_Reg_File ( .WrData(M_Wr_Data), .Address({Address[3:2], n5, n4}), 
        .WrEn(WrEN), .RdEn(RdEN), .CLK(REF_CLK), .RST(n6), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(A), .REG1(B), .REG2(UART_config), 
        .REG3(TX_Div_Ratio) );
  RST_SYNC_0 RST_SYNC_1 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(SYNC_RST_1) );
  RST_SYNC_1 RST_SYNC_2 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(SYNC_RST_2)
         );
  DATA_SYNC U_DATA_SYNC ( .unsync_bus(RX_P_Data), .bus_enable(RX_D_VLD), .CLK(
        REF_CLK), .RST(n6), .sync_bus(Sync_DATA), .enable_pulse(Sync_Valid) );
  Prescale_Mux U_Prescale_Mux ( .sel(UART_config[7:2]), .ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, RX_Div_Ratio[2:0]}) );
  ClkDiv_0 RX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, RX_Div_Ratio[2:0]}), 
        .o_div_clk(RX_CLK) );
  ClkDiv_1 TX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio(TX_Div_Ratio), .o_div_clk(TX_CLK) );
  ASYC_FIFO U_ASYC_FIFO ( .W_CLK(REF_CLK), .W_RST(n6), .W_INC(Wr_INC), .R_CLK(
        TX_CLK), .R_RST(n2), .R_INC(Rd_pulse), .WR_DATA(F_Wr_Data), .FULL(
        FIFO_FULL), .EMPTY(FIFO_EMPTY), .RD_DATA(TX_DATA) );
  Pulse_Gen U_Pulse_Gen ( .In_Sig(Busy), .CLK(TX_CLK), .RST(n2), .Pulse(
        Rd_pulse) );
  UART_TX U_UART_TX ( .P_Data(TX_DATA), .Data_Valid(n1), .PAR_EN(
        UART_config[0]), .PAR_TYP(UART_config[1]), .CLK(TX_CLK), .RST(n2), 
        .TX_OUT(UART_TX_O), .Busy(Busy) );
  UART_RX U_UART_RX ( .RX_IN(UART_RX_IN), .PAR_EN(UART_config[0]), .PAR_TYP(
        UART_config[1]), .CLK(RX_CLK), .RST(n2), .Prescale(UART_config[7:2]), 
        .Parity_Error(parity_error), .Stop_Error(framing_error), .P_DATA(
        RX_P_Data), .Data_valid(RX_D_VLD) );
  INVX4M U3 ( .A(n7), .Y(n6) );
  BUFX2M U4 ( .A(Address[0]), .Y(n4) );
  BUFX2M U5 ( .A(Address[1]), .Y(n5) );
  INVX2M U6 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX2M U7 ( .A(SYNC_RST_1), .Y(n7) );
  INVX4M U8 ( .A(n3), .Y(n2) );
  INVX2M U9 ( .A(SYNC_RST_2), .Y(n3) );
endmodule

