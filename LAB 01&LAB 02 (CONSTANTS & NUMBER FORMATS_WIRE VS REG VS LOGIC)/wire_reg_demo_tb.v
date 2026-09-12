`timescale 1ns/1ps

module wire_reg_demo_tb;

    reg a;
    reg b;

    wire y_wire;
    wire y_reg;

    wire_reg_demo uut (
        .a(a),
        .b(b),
        .y_wire(y_wire),
        .y_reg(y_reg)
    );

    initial begin

        a = 0;
        b = 0;
        #10;

        a = 0;
        b = 1;
        #10;

        a = 1;
        b = 0;
        #10;

        a = 1;
        b = 1;
        #10;

        $finish;

    end

endmodule