`timescale 1ns/1ps

module bit_part_select_tb;

    reg  [7:0] data;
    wire       bit_3;
    wire [3:0] upper_nibble;
    wire [3:0] lower_nibble;

    // Unit Under Test
    bit_part_select uut (
        .data(data),
        .bit_3(bit_3),
        .upper_nibble(upper_nibble),
        .lower_nibble(lower_nibble)
    );

    initial begin

        data = 8'b10110110;
        #10;

        data = 8'b11001001;
        #10;

        data = 8'b01101101;
        #10;

        data = 8'b11110000;
        #10;

        $finish;

    end

endmodule