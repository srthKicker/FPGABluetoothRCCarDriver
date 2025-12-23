//Simple logic, triggers on start bit and checks if we were waiting for a start bit
//If we were not waiting for a bit, do nothing
module rstDriver(
    input logic sysClk,
    input logic bitIn,
    input logic waiting,
    output logic rstBaud
    );
    
    //Used this to seni-asynchronously detect a start bit
    logic lastBitIn;
    
    initial begin
        lastBitIn <= 0;
        rstBaud <= 0;
    end
    
    
    //
    always_ff @(posedge sysClk) begin
        //We want to pulse rstBaud on negedge
        if((lastBitIn == 1) && (bitIn == 0)) begin //Basically detecting negedge bitIn
            if(waiting == 1) begin //If we were waiting for a start bit
                rstBaud <= 1; //Pulse rstBaud
            end
        end else begin
            rstBaud <= 0;
        end
        lastBitIn<=bitIn; //tracks the most recent bit we recieved
    end
endmodule

