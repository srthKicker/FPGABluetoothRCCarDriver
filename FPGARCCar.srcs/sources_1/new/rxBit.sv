//Very simply adds a bit to the data
module rxBit(
    input  logic bodCk, bitIn, rxEnable,
    output logic [7:0] data,
    output logic trigFSM //This output is used in ctrlMotor to trigger a change in the FSM
    );
    logic [2:0] index; //Internal variable
    
    initial begin
        index <= 3'b000; //Initializes index to 0
    end
    //Key note here, data[index] happens immediately because blocking, but the other two are nonblocking
    //This makes it so trigFSM uses the original value of index when calculating what its value is, but
    //at the same time data[index] is changed before trigFSM is pulsed.
    //This is important because ctrlMotor needs a guarantee that data is solidified before trigFSM is pulsed.   
    //Scratch that I went with blocking for simplicity at least for now. Keeping that for my later debugging.
    always_ff @(posedge bodCk) begin
        if(rxEnable) begin// if we are done being delayed
            data[index] = bitIn;
            trigFSM = (index == 7); // Pulses trigFSM to 1 if index == 7, else resets to 0.
            index = index + 1; //Increments the index and expertly wraps it around to 0
        end
    end
endmodule
