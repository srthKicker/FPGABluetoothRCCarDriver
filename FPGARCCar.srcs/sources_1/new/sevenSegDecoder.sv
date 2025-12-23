module seven_seg_decoder (
    input  wire [7:0] value,     // 8-bit input (two 4-bit hex digits)
    output reg  [6:0] seg1,      // Segments for 7 segment
    output reg [6:0] seg2
);

// Hex-to-7-segment mapping
function [6:0] hex_to_segment;
    input [3:0] hex;
    begin
        case(hex)
            4'h0: hex_to_segment = 7'b1000000; // a b c d e f
            4'h1: hex_to_segment = 7'b1111001; //     b c
            4'h2: hex_to_segment = 7'b0100100; // a b   d e   g
            4'h3: hex_to_segment = 7'b0110000; // a b c d     g
            4'h4: hex_to_segment = 7'b0011001; //   b c     f g
            4'h5: hex_to_segment = 7'b0010010; // a   c d   f g
            4'h6: hex_to_segment = 7'b0000010; // a   c d e f g
            4'h7: hex_to_segment = 7'b1111000; // a b c
            4'h8: hex_to_segment = 7'b0000000; // a b c d e f g
            4'h9: hex_to_segment = 7'b0010000; // a b c d   f g
            4'hA: hex_to_segment = 7'b0001000; // a b c   e f g
            4'hB: hex_to_segment = 7'b0000011; //     c d e f g
            4'hC: hex_to_segment = 7'b1000110; // a     d e f
            4'hD: hex_to_segment = 7'b0100001; //   b c d e   g
            4'hE: hex_to_segment = 7'b0000110; // a     d e f g
            4'hF: hex_to_segment = 7'b0001110; // a       e f g
            default: hex_to_segment = 7'b1111011; // All of
        endcase
    end
endfunction
initial begin
    seg1 <= 7'b1111111; //Just initializes them
    seg2 <= 7'b1111111;
end
// Assign decoded segments
always @(*) begin
    seg2 = hex_to_segment(value[3:0]); // First hex digit
    seg1 = hex_to_segment(value[7:4]); // Second hex digit
end

endmodule
