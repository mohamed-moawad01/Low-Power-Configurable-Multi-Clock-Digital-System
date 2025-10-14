module ALU #(parameter DATA_WIDTH = 8 , FUN_WIDTH = 4 , OUT_WIDTH = DATA_WIDTH * 2) (

input wire [DATA_WIDTH - 1 : 0] A , //first operand

input wire [DATA_WIDTH - 1 : 0] B , // second operand

input wire [FUN_WIDTH - 1 : 0] ALU_FUN , // OP_code

input wire Enable , // Enable signal

input wire CLK , // clock signal

input wire RST , // Reset signal

output reg [OUT_WIDTH - 1 : 0] ALU_OUT , // the result (registered)

output reg OUT_Valid // indicate output is valid
);

// internal signal 
reg [OUT_WIDTH - 1 : 0] ALU_comp ;

reg OUT_comp ; 

// behaviour of ALU_OUT
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
          begin
            ALU_OUT <= 'b0 ;
            OUT_Valid <= 'b0 ;
          end
        else
          begin
            ALU_OUT <= ALU_comp ;
            OUT_Valid <= OUT_comp ;
          end
    end


// behaviour of ALU_comp

always @(*)
    begin
        ALU_comp = 'b0 ;
        OUT_comp = 'b0 ; 
        if(Enable)
            begin
               OUT_comp = 'b1 ;
               case(ALU_FUN)
                4'b0000 : ALU_comp = A + B ;

                4'b0001 : ALU_comp = A - B ;
                  
                4'b0010 : ALU_comp = A * B ;

                4'b0011 : 
                    begin
                        if(B == 16'h0) 
                            ALU_comp = 'b0 ;
                        else
                            ALU_comp = A / B ;
                    end

                4'b0100 : ALU_comp = A & B ;

                4'b0101 : ALU_comp = A | B ;

                4'b0110 : ALU_comp = ~ (A & B) ;

                4'b0111 : ALU_comp = ~ (A | B) ; 

                4'b1000 : ALU_comp = A ^ B ;

                4'b1001 : ALU_comp = ~ (A ^ B) ;

                4'b1010 :  
                    begin
                        if(A == B)
                            ALU_comp = 16'd1;
                        else
                            ALU_comp = 16'd0;
                    end

                4'b1011 :  
                    begin
                        if(A > B)
                            ALU_comp = 16'd2;
                        else
                            ALU_comp = 16'd0;
                    end

                4'b1100 :  
                    begin
                        if(A < B)
                            ALU_comp = 16'd3;
                        else
                            ALU_comp = 16'd0;
                    end

                4'b1101 : ALU_comp = A >> 1 ;

                4'b1110 : ALU_comp = A << 1 ;

                default : ALU_comp = 16'd0 ;

                endcase 
            end

        else 
            begin
                ALU_comp = 'b0 ;
                OUT_comp = 'b0 ;
            end  
    end   

endmodule 