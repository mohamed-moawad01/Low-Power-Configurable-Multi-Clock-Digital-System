module RST_SYNC #(parameter NUM_STAGES = 2) (
    input wire RST , // Asynchronous Reset signal

    input wire CLK , // Clock signal 

    output wire SYNC_RST // Synchronized Reset
);


/************ Internal signals ************/
reg [NUM_STAGES - 1 : 0] Sync ; // synchronization register


/************ Sync behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Sync <= 'b0 ;
            end
        else
            begin
               Sync <= {Sync[NUM_STAGES - 2 : 0] , 1'b1} ; 
            end
    end


/************ SYNC_RST behaviour ************/
assign  SYNC_RST = Sync[NUM_STAGES - 1] ;

    
endmodule