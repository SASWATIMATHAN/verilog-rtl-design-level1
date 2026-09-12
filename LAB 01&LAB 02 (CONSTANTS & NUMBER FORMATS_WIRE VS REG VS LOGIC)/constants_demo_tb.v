`timescale 1ns/1ps

module constants_demo_tb;

    constants_demo dut();

    initial begin
        #10;
        $display("Binary value  = %b", dut.binary_value);
        $display("Decimal value = %d", dut.decimal_value);
        $display("Hex value     = %h", dut.hex_value);
        #10;
        $finish;
    end

endmodule
