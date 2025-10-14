module Serializer (
  input wire  [7 : 0] P_Data , // parallel input data 

  input wire ser_en , // Signal enable the serializer block from FSM block

  input wire Data_Valid ,

  input wire CLK , // Clock signal 

  input wire RST , // Reset signal

  output reg ser_done , // flag indicate Serializer block finished

  output reg ser_data  // serial output data

);

/********** internal signals **********/
reg [7 : 0] serializer ; // shift register

reg [3 : 0] count ; // for counting clock cycles 


/********** ser_data behaviour **********/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset assertion  logic
            begin
                ser_data <= 'b0 ;
                serializer <= 'b0 ;
                count <= 'b0 ; 
            end
        else if(!ser_en && Data_Valid) // accepting data as long as serial enable is not asserted
            begin
                serializer <= P_Data ;
                count <= 'b0 ;
            end
        else if(ser_en && count != 4'b1000) // stop accepting data and start function 
            begin
                {serializer[6 : 0] , ser_data} <= serializer ;
                count <= count + 1 ;
            end
    end


/********** ser_done behaviour **********/
always @(posedge CLK or negedge RST)
    begin
        if(!RST) // reset assertion logic
            begin
                ser_done <= 'b0 ;
            end
        else if (count != 4'b0111) // serializing not finished 
            begin
                ser_done <= 'b0 ;
            end 
        else                      //serializing finished 
            begin
                ser_done <= 'b1 ;
            end
    end

endmodule