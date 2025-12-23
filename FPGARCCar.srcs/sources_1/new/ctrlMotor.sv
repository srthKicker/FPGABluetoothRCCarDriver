`timescale 1ns / 1ps


//This one is pretty simple, there's only really 4 inputs we can use. Here's a guide:
// 0000 0000 means stop all motors. 0000 1111 means run only the right motor
// 1111 1111 means run left and right 1111 0000 means run only the left motor


module ctrlMotor(
    input logic [7:0] data,
    input logic trigFSM,
    output logic lMotor,
    output logic rMotor
    );
    
    initial begin
        lMotor = 0;
        rMotor = 0;
    end
    
    always_ff @(posedge trigFSM) begin
        //These if blocks ignores any byte with errors in it
        //A byte with no errors will have the first 4 bits and last 4 bits equal
            lMotor <= data[1]; //First four bits are lMotor's bits && (data[6] == data[7])
            rMotor <= data[5]; //Second four bits are rMotor's bits
    end
endmodule
