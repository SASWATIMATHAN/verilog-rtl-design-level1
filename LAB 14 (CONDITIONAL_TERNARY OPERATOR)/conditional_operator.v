module conditional_operator (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] max_value
);

    assign max_value = (A > B) ? A : B;

endmodule