module DATA_SYNC #(
    parameter NUM_STAGES = 2 , 
    parameter BUS_WIDTH = 8 
) (
    input wire [BUS_WIDTH - 1 : 0] unsync_bus , // Asynchronous data
    
    input wire bus_enable , // Asynchronous enable signal

    input wire CLK , // Clock signal

    input wire RST , // Reset signal

    output reg [BUS_WIDTH - 1 : 0] sync_bus , // Synchronous data

    output reg enable_pulse // Synchronous enable signal
);


/************ Internal signals ************/
reg [NUM_STAGES - 1 : 0] Sync_en ; // enable Synchronization register

reg pulse_reg ; // F.F in beginig of pulse gen

wire pulse ; // the pulse value

/************ Sync_en behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Sync_en <= 'b0 ;
            end
        else
            begin
                Sync_en <= {Sync_en[NUM_STAGES - 2 : 0] , bus_enable} ;
            end
    end


/************ pulse_reg behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                pulse_reg <= 'b0 ;
            end
        else
            begin
                pulse_reg <= Sync_en[NUM_STAGES - 1] ;
            end
    end


/************ enable_pulse behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                enable_pulse <= 'b0 ;
            end
        else
            begin
                enable_pulse <= pulse ;
            end
    end


/************ sync_bus behaviour ************/
always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                sync_bus <= 'b0 ;
            end
        else if(pulse)
            begin
                sync_bus <= unsync_bus ;
            end
    end


/************ pulse behaviour ************/
assign pulse = Sync_en[NUM_STAGES - 1] && !pulse_reg ;



    
endmodule