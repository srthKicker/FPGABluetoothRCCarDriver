module baudClk(
    input logic clk,
    input logic rst,
    output logic bodCk,
    output logic waiting
    );
     // Counts how many 100MHz system clock cycles run. To achieve 9600 baud 
     // rate, 10,417 clock cycles must run for each bodCk pulse.
    logic signed [16:0] count;
    // We only want bodCk to sample 8 bits (9 including stop bit if I want to.
    //Therefore, this will track how many we have sampled so far
    logic [3:0] numBits;
    logic lastRST; //Alternative way of calculating posedge rst
    localparam int len = 10417;
    
    //For posterity, initialize everything
    initial begin
        numBits <= 0;
        count <= -len/2; //We don't want to sample yet, we want to wait for rst
        waiting <= 1;
        bodCk <= 0;
    end
    
    //Reset is vital here, as it is our trigger to listen for a new byte
    always_ff @(posedge clk) begin 
        //Upon reset, reset numBits and count
        lastRST <= rst;
        if((lastRST == 0) && (rst == 1)) begin
        //We set count half a cycle back so our bodCk
        //samples around the middle of each UART bit
            count <= -len/2;
            numBits <= 0;
            waiting <= 0;
        end else begin //Only run the rest if this isn't a reset
        //Unintentionally, this makes it so waiting is not set to 1 until
        //one cycle after the last bit, which works well.
             if (numBits == 8) begin 
                waiting <= 1;
            end else if (count == len) begin 
                bodCk <= 1;
                numBits <= numBits + 1;
                count <= 0;
            end else begin 
                bodCk <= 0;
                count <= count + 1;
            end 
        end
    end
endmodule
