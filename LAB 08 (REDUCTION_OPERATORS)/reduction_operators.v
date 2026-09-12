module reduction_operators (
    input  [3:0] in,
    output       and_out,
    output       or_out,
    output       xor_out
);

    assign and_out = &in;
    assign or_out  = |in;
    assign xor_out = ^in;

endmodule