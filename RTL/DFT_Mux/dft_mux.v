module dft_mux (

    input wire SEL ,

    input wire IN0 ,

    input wire IN1 ,

    output wire OUT 

);

assign OUT = SEL? IN1 : IN0 ;

endmodule
