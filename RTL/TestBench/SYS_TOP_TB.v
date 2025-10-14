`timescale 1ns/1ps
module SYS_TOP_TB ();

/**************** Testbench Parameter ****************/
localparam REF_CLK_Period = 20; // Reference clock period

localparam UART_CLK_Period = 271.26 ; // Lowest clock period of UART 

localparam UART_TX_Period = 8680.32 ; // UART_TX clock period to help in testing


/**************** Testbench Signals ****************/
reg UART_RX_IN ; // input data from UART RX

reg REF_CLK ; // the refernce clock

reg UART_CLK ; // fastest Clock of UART

reg RST_N ; // asynchronous reset signal

wire UART_TX_O ; // output serial data

wire parity_error ; // UART_RX parity error flag

wire framing_error ; // Stop bit error


/**************** Stimulus ****************/
initial 
begin

    initialize();

    reset ();

    $display("All given numbers are in Hexadecimal format") ;
    $display("****** changing configuration to work with prescale  = 8 and even parity *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_1_0000_0010_0) ; 

    in_data (11'b1_0_0010_0001_0) ; 

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_0000_0011_0) ; 

    in_data (11'b1_1_0010_0000_0) ;

    $display("****** wiriting 15 in memory in address 5 *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    in_data (11'b1_1_0001_0101_0) ;

    $display("****** reading 15 from address 5 in memory expected value is 15 *******");

    in_data (11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0001_0101) ;

    $display("****** Adding AA to BB expected output is 165 in hexadecimal format *******");
    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0000_0) ;

    check(8'b0110_0101) ;

    check(8'b0000_0001) ;

    $display("****** Subtracting 20 to 10 expected output is 10 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_1_0010_0000_0) ;

    in_data(11'b1_1_0001_0000_0) ;

    in_data(11'b1_1_0000_0001_0) ;

    check(8'b0001_0000) ;

    check(8'b0000_0000) ;

   $display("****** Multiplying DD by EE expected output is CD76 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_1110_1110_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b0111_0110) ;

    check(8'b1100_1101) ;

    $display("****** Dividing 50 by 2 expected output is 28 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0101_0000_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    in_data(11'b1_0_0000_0011_0) ;

    check(8'b0010_1000) ;

    check(8'b0000_0000) ;

    $display("****** Multiplying 50 by 2 without re-sending them expected output is A0 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b1010_0000) ;

    check(8'b0000_0000) ;

    $display("****** ANDing A to 6 expected output is 2 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    in_data(11'b1_1_0000_0100_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** ORing A to 6 without re-sending them expected output is E in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0000_1110) ;

    check(8'b0000_0000) ;

    $display("****** NANDing A to 6 without re-sending them expected output is FFFD in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    check(8'b1111_1101) ;

    check(8'b1111_1111) ;

    $display("****** NORing A to 6 without re-sending them expected output is FFF1 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0111_0) ;

    check(8'b1111_0001) ;

    check(8'b1111_1111) ;

    $display("****** XORing A to 6 without re-sending them expected output is 000C in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1000_0) ;

    check(8'b0000_1100) ;

    check(8'b0000_0000) ;

    $display("****** XNORing A to 6 without re-sending them expected output is FFF3 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1001_0) ;

    check(8'b1111_0011) ;

    check(8'b1111_1111) ;

    $display("****** equality comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Greater comparision between A and 6 without re-sending them expected output is 0002 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1011_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** Smaller comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1100_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Shifting right between A without re-sending it expected output is 0005 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1101_0) ;

    check(8'b0000_0101) ;

    check(8'b0000_0000) ;

    $display("****** Shifting left between A without re-sending it expected output is 0014 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1110_0) ;

    check(8'b0001_0100) ; 

    check(8'b0000_0000) ;


    


    /*******************changing prsscale*******************/

    $display("****** Retesting  using prescale = 16  *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_1_0000_0010_0) ; 

    in_data (11'b1_0_0100_0001_0) ; 

    $display("****** wiriting 15 in memory in address 5 *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    in_data (11'b1_1_0001_0101_0) ;

    $display("****** reading 15 from address 5 in memory expected value is 15 *******");

    in_data (11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0001_0101) ;

    $display("****** Adding AA to BB expected output is 165 in hexadecimal format *******");
    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0000_0) ;

    check(8'b0110_0101) ;

    check(8'b0000_0001) ;

    $display("****** Subtracting 20 to 10 expected output is 10 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_1_0010_0000_0) ;

    in_data(11'b1_1_0001_0000_0) ;

    in_data(11'b1_1_0000_0001_0) ;

    check(8'b0001_0000) ;

    check(8'b0000_0000) ;

   $display("****** Multiplying DD by EE expected output is CD76 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_1110_1110_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b0111_0110) ;

    check(8'b1100_1101) ;

    $display("****** Dividing 50 by 2 expected output is 28 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0101_0000_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    in_data(11'b1_0_0000_0011_0) ;

    check(8'b0010_1000) ;

    check(8'b0000_0000) ;

    $display("****** Multiplying 50 by 2 without re-sending them expected output is A0 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b1010_0000) ;

    check(8'b0000_0000) ;

    $display("****** ANDing A to 6 expected output is 2 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    in_data(11'b1_1_0000_0100_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** ORing A to 6 without re-sending them expected output is E in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0000_1110) ;

    check(8'b0000_0000) ;

    $display("****** NANDing A to 6 without re-sending them expected output is FFFD in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    check(8'b1111_1101) ;

    check(8'b1111_1111) ;

    $display("****** NORing A to 6 without re-sending them expected output is FFF1 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0111_0) ;

    check(8'b1111_0001) ;

    check(8'b1111_1111) ;

    $display("****** XORing A to 6 without re-sending them expected output is 000C in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1000_0) ;

    check(8'b0000_1100) ;

    check(8'b0000_0000) ;

    $display("****** XNORing A to 6 without re-sending them expected output is FFF3 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1001_0) ;

    check(8'b1111_0011) ;

    check(8'b1111_1111) ;

    $display("****** equality comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Greater comparision between A and 6 without re-sending them expected output is 0002 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1011_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** Smaller comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1100_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Shifting right between A without re-sending it expected output is 0005 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1101_0) ;

    check(8'b0000_0101) ;

    check(8'b0000_0000) ;

    $display("****** Shifting left between A without re-sending it expected output is 0014 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1110_0) ;

    check(8'b0001_0100) ; 

    check(8'b0000_0000) ;



    /*******************changing prsscale*******************/

    $display("****** Retesting  using prescale = 32  *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_1_0000_0010_0) ; 

    in_data (11'b1_0_1000_0001_0) ; 

    $display("****** wiriting 15 in memory in address 5 *******");

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    in_data (11'b1_1_0001_0101_0) ;

    $display("****** reading 15 from address 5 in memory expected value is 15 *******");

    in_data (11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0001_0101) ;

    $display("****** Adding AA to BB expected output is 165 in hexadecimal format *******");
    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1010_1010_0) ;

    in_data(11'b1_0_1011_1011_0) ;

    in_data(11'b1_0_0000_0000_0) ;

    check(8'b0110_0101) ;

    check(8'b0000_0001) ;

    $display("****** Subtracting 20 to 10 expected output is 10 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_1_0010_0000_0) ;

    in_data(11'b1_1_0001_0000_0) ;

    in_data(11'b1_1_0000_0001_0) ;

    check(8'b0001_0000) ;

    check(8'b0000_0000) ;

   $display("****** Multiplying DD by EE expected output is CD76 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_1110_1110_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b0111_0110) ;

    check(8'b1100_1101) ;

    $display("****** Dividing 50 by 2 expected output is 28 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0101_0000_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    in_data(11'b1_0_0000_0011_0) ;

    check(8'b0010_1000) ;

    check(8'b0000_0000) ;

    $display("****** Multiplying 50 by 2 without re-sending them expected output is A0 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0010_0) ;

    check(8'b1010_0000) ;

    check(8'b0000_0000) ;

    $display("****** ANDing A to 6 expected output is 2 in hexadecimal format *******");

    in_data(11'b1_0_1100_1100_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    in_data(11'b1_1_0000_0100_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** ORing A to 6 without re-sending them expected output is E in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0101_0) ;

    check(8'b0000_1110) ;

    check(8'b0000_0000) ;

    $display("****** NANDing A to 6 without re-sending them expected output is FFFD in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_0110_0) ;

    check(8'b1111_1101) ;

    check(8'b1111_1111) ;

    $display("****** NORing A to 6 without re-sending them expected output is FFF1 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_0111_0) ;

    check(8'b1111_0001) ;

    check(8'b1111_1111) ;

    $display("****** XORing A to 6 without re-sending them expected output is 000C in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1000_0) ;

    check(8'b0000_1100) ;

    check(8'b0000_0000) ;

    $display("****** XNORing A to 6 without re-sending them expected output is FFF3 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1001_0) ;

    check(8'b1111_0011) ;

    check(8'b1111_1111) ;

    $display("****** equality comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1010_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Greater comparision between A and 6 without re-sending them expected output is 0002 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1011_0) ;

    check(8'b0000_0010) ;

    check(8'b0000_0000) ;

    $display("****** Smaller comparision between A and 6 without re-sending them expected output is 0000 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_0_0000_1100_0) ;

    check(8'b0000_0000) ;

    check(8'b0000_0000) ;

    $display("****** Shifting right between A without re-sending it expected output is 0005 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1101_0) ;

    check(8'b0000_0101) ;

    check(8'b0000_0000) ;

    $display("****** Shifting left between A without re-sending it expected output is 0014 in hexadecimal format *******");

    in_data(11'b1_0_1101_1101_0) ;

    in_data(11'b1_1_0000_1110_0) ;

    check(8'b0001_0100) ; 

    check(8'b0000_0000) ;
    

    $finish ;
    


end

/************ Testbench tasks ************/
task initialize ; // initialzie testing and both Clocks 
    begin
        $dumpfile("System_TOP.vcd") ;
        $dumpvars ;
        UART_RX_IN = 'b1;
        REF_CLK = 'b0 ;
        UART_CLK = 'b0 ;   
    end
endtask

task reset ; // Assertion & de-assertion of reset signal
    begin
        RST_N = 'b0 ; //reset assertion
        #UART_TX_Period;
        RST_N = 'b1 ; // Reset de-assertion
        #9087210 ;
    end
endtask

task in_data ; // input data to UART_RX

input [10 : 0] data ; // data

integer i ; // loop iterator

  begin
    for(i = 0 ; i < 11 ; i = i + 1)
        begin
           UART_RX_IN = data[i] ;
           #UART_TX_Period ;
        end
    #UART_TX_Period ;

    end

endtask

task check ; // check output

input [7 : 0] exp_data ; // expected output

reg [7 : 0] out_data ; // UART_TX Output data

reg parity ; // to check parity 


integer i ;

  begin
    parity = ^exp_data ; // using even parity if odd cahnge if to parity = ~^exp_data ;
    @(posedge U_System_Top.U_UART_TX.fsm.Busy) ;
    #(2 * UART_TX_Period) ;
    for(i = 0 ; i < 8 ; i = i + 1)
        begin
           out_data[i] = UART_TX_O ;
           #UART_TX_Period ;
        end
    if(exp_data == out_data)
        begin
            $display("Test passed expected output = %0h the output  = %0h",exp_data ,out_data );
        end
    else
        begin
            $display("Test Failed expected output = %0h the output  = %0h",exp_data ,out_data ); 
        end

    if(parity == UART_TX_O)
        begin
            $display("parity test passed expected parity = %0b output parity = %0b",parity , UART_TX_O);
        end
    else
        begin
            $display("parity test failed expected parity = %0b output parity = %0b",parity , UART_TX_O);
        end
        #UART_CLK_Period ;
    if(UART_TX_O == 1'b1)
        begin
            $display("stop test passed");
        end
    else
        begin
            $display("stop test failed");
        end

    end

endtask


/**************** REF_CLK generator ****************/
always #(REF_CLK_Period/2) REF_CLK = !REF_CLK ;


/**************** REF_CLK generator ****************/
always #(UART_CLK_Period/2) UART_CLK = !UART_CLK ;


/**************** DUT instantiation ****************/
SYS_TOP U_System_Top (
    .UART_RX_IN (UART_RX_IN) ,
    .REF_CLK (REF_CLK) ,
    .UART_CLK (UART_CLK) ,
    .RST_N (RST_N) ,
    .UART_TX_O (UART_TX_O) ,
    .parity_error (parity_error) ,
    .framing_error (framing_error)
);


endmodule