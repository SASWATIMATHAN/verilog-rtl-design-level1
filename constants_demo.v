module constants_demo;

    reg [7:0] binary_value;
    reg [7:0] decimal_value;
    reg [7:0] hex_value;

    initial begin

        binary_value  = 8'b10101010;
        decimal_value = 8'd170;
        hex_value     = 8'hAA;

    end

endmodule
