module SYNC #(
    parameter ADDR_WIDTH = 3
) (
    input wire [ADDR_WIDTH : 0] ASYNC_addr , // Asyncrohonous address

    input wire CLK , // Clock signal

    input wire RST , // Reset Signal

    output reg [ADDR_WIDTH : 0] SYNC_addr // Synchronous address
);


/**************** Variables ****************/
integer I ; // loop iterator for reseting the synchronizer
integer j ; // loop iterator for assigning the output

/**************** Internal signals ****************/
reg [1 : 0] SYNC [ADDR_WIDTH : 0] ; // douple flop synchronizer for each flop


/**************** SYNC behaviour ****************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                for ( I = 0 ; I <= ADDR_WIDTH ; I = I + 1 )
                    begin
                        SYNC[I] <= 'b0 ;
                    end
            end
        else 
            begin
                for (I = 0 ; I <= ADDR_WIDTH ; I = I + 1 ) 
                    begin
                        SYNC[I] <= {SYNC[I][0] , ASYNC_addr[I] } ;
                    end
            end
    end


/**************** SYNC_addr behaviour ****************/
always @(*)
    begin
        for(j = 0 ; j <= ADDR_WIDTH ; j = j + 1)
            begin
                SYNC_addr[j] = SYNC[j][1] ;
            end 
    end

    
endmodule
