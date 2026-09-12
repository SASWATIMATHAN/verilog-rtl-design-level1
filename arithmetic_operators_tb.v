module arithmetic_operators_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire [3:0] add_out;
    wire [3:0] sub_out;
    wire [7:0] mul_out;
    wire [3:0] div_out;
    wire [3:0] mod_out;

    arithmetic_operators uut (
        .A(A),
        .B(B),
        .add_out(add_out),
        .sub_out(sub_out),
        .mul_out(mul_out),
        .div_out(div_out),
        .mod_out(mod_out)
    );

    initial begin
        A = 4'b0101;
        B = 4'b0010;
        #10;

        A = 4'b1000;
        B = 4'b0011;
        #10;

        A = 4'b0111;
        B = 4'b0010;
        #10;

        A = 4'b1100;
        B = 4'b0100;
        #10;

        A = 4'b1111;
        B = 4'b0011;
        #10;

        $stop;
    end

endmodule