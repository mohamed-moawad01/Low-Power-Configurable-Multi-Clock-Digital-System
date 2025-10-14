module Reg_File #(parameter ADDR_WIDTH = 4 , DEPTH = 16 ,  DATA_WIDTH = 8 ) (
  input wire [DATA_WIDTH - 1 : 0] WrData , // the input data
  
  input wire [ADDR_WIDTH - 1 : 0] Address , // the address bus
  
  input wire WrEn , // write Enable
  
  input wire RdEn , // Read Enable 
   
  input wire CLK , // Clock Signal
  
  input wire RST , //Reset Signal
  
  output reg [DATA_WIDTH - 1 : 0] RdData , // the output data

  output reg RdData_Valid , // indicate valid output

  output wire [DATA_WIDTH - 1 : 0] REG0 , // ALU first opernad 

  output wire [DATA_WIDTH - 1 : 0] REG1 , // ALU second opernad 

  output wire [DATA_WIDTH - 1 : 0] REG2 , // UART configuration

  output wire [DATA_WIDTH - 1 : 0] REG3  // Clock divider division ratio  
 
);

/******************* Variables *******************/
integer i ; // loop iterator


/******************* Internal signals *******************/
reg [DATA_WIDTH - 1 : 0] mem [DEPTH - 1 : 0] ; // the register file

always @(posedge CLK or negedge RST)
  begin
    if(!RST)
      begin
        for(i = 0 ; i < DEPTH ; i = i + 1)
          begin
            if(i == 2)
              begin
                mem[i] <= 'b10000001 ; 
              end
            else if(i == 3)
              begin
                mem[i] <='d32 ; 
              end
            else
              begin
                mem[i] <= 'b0 ;
              end
          end
        RdData <= 'b0 ;
        RdData_Valid <= 'b0 ;
      end
    else if(WrEn && ~RdEn)
      begin
        
        mem[Address] <= WrData ;
        RdData_Valid <= 'b0 ;
        
      end
    else if(~WrEn && RdEn)
      begin
        
        RdData <= mem[Address] ; 
        RdData_Valid <= 'b1 ;
      end
    else
      begin
        RdData_Valid <= 'b0 ;
      end
    
  end

assign REG0 = mem[0] ;
assign REG1 = mem[1] ;
assign REG2 = mem[2] ;
assign REG3 = mem[3] ;

endmodule
