module ClkDiv (
    input wire i_ref_clk , // Reference Clock

    input wire i_rst_n , // Reset Signal

    input wire i_clk_en , // Enable Signal

    input wire [7 : 0] i_div_ratio , // Division ratio 

    output reg o_div_clk // Divided Clock
);

/***********Internal signals***********/
wire CLK_DIV_EN ; // Enable divivosn logic

wire odd ; // Odd divison ratio 

wire [6 : 0] CLK_togg ; // When to toggle for even and odd

wire [6 : 0] odd_CLK_togg ; // When to toggle for odd only 

wire High ; // indicate generated clock is high

wire Low ; // inidcate generated clock is low

reg [6 : 0] Counter ; // count number of clock cycles

reg div_clk ; // hold the value of the divided clock


/***********Internal signals logic***********/
assign CLK_DIV_EN = i_clk_en && (i_div_ratio != 'b0) && (i_div_ratio != 'b1) ;

assign odd = i_div_ratio[0] ;

assign CLK_togg = (i_div_ratio >> 1) - 'd1  ; 

assign odd_CLK_togg = i_div_ratio - CLK_togg - 'd2 ;

assign High = div_clk ;

assign Low = !div_clk ;  

/*********** Counter behaviour ***********/
always @(posedge i_ref_clk or negedge i_rst_n)
    begin
        if(!i_rst_n) // Reset logic
            begin
                Counter <= 'b0 ;
            end
        else if (!CLK_DIV_EN)
            begin
                Counter <= 'b0 ;
            end
        else if(!odd && (Counter >= CLK_togg)) // maximum pulse width in even case (help when chang from high div_ratio to low)
            begin
                Counter <= 'b0 ;
            end
        else if (odd && (Counter >= CLK_togg && High ) || (Counter >= odd_CLK_togg && Low)) // pulse widthes in odd case (help when chang from high div_ratio to low)
            begin
                Counter <= 'b0 ;
            end
        else
            begin
                Counter <= Counter + 'b1 ;
            end
    end

/*********** div_clk behaviour ***********/
always @(posedge i_ref_clk or negedge i_rst_n)
    begin
        if(!i_rst_n) // Reset logic 
            begin
                div_clk <= 'b0 ; 
            end
        else if(!CLK_DIV_EN) //no need to update it
            begin
                div_clk <= 'b0 ; //no need to update it
            end
        else if(!odd && (Counter >= CLK_togg)) // maximum pulse width in even case
            begin
                div_clk <= !div_clk ; // Toggle the generated clock
            end
        else if(odd && (Counter >= CLK_togg && High ) || (Counter >= odd_CLK_togg && Low)) // pulse widthes in odd case 
            begin
                div_clk <= !div_clk ; // toggle the generated clock 
            end
    end

/*********** o_div_clk behaviour ***********/
always @(*)
    begin
        if(!i_rst_n || !CLK_DIV_EN) // if module is reseted or disabled of improper division ratio 
            begin
                o_div_clk = i_ref_clk ; 
            end
        else
            begin
                o_div_clk = div_clk ; 
            end
    end


    
endmodule
