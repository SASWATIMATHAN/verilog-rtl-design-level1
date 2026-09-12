module operator_precedence (
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] C,
    output [7:0] result1,
    output [7:0] result2
);

    assign result1 = A + B * C;
    assign result2 = (A + B) * C;

endmodule