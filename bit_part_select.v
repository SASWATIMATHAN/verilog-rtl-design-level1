`timescale 1ns/1ps

module bit_part_select (
    input  wire [7:0] data,
    output wire       bit_3,
    output wire [3:0] upper_nibble,
    output wire [3:0] lower_nibble
);

    assign bit_3        = data[3];
    assign upper_nibble = data[7:4];
    assign lower_nibble = data[3:0];

endmodule