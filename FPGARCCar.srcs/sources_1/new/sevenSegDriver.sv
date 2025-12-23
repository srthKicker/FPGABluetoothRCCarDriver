`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 09:18:06 PM
// Design Name: 
// Module Name: sevenSegDriver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sevenSegDriver(
    input sysClk,
    input [6:0] seg1, seg2,
    output logic [3:0] an,
    output logic [6:0] seg
    );

    logic [15:0] clkDiv;   // Counter for slowing down refresh
    logic sel;             // Selector bit for seg1 or seg2

    always_ff @(posedge sysClk) begin
        clkDiv <= clkDiv + 1;
        if (clkDiv == 0)   // Toggle selector at overflow (adjust clkDiv size/speed if needed)
            sel <= ~sel;
    end

    always_comb begin
        case (sel)
            1'b0: begin
                seg = seg1;
                an = 4'b1011; // Enable position for seg1
            end
            1'b1: begin
                seg = seg2;
                an = 4'b1101; // Enable position for seg2
            end
        endcase
    end

endmodule

