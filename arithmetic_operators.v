module arithmetic_operators (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] add_out,
    output [3:0] sub_out,
    output [7:0] mul_out,
    output [3:0] div_out,
    output [3:0] mod_out
);

    assign add_out = A + B;
    assign sub_out = A - B;
    assign mul_out = A * B;
    assign div_out = A / B;
    assign mod_out = A % B;

endmodule