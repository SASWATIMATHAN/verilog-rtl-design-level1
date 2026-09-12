module sign_extension (
    input  signed [3:0] in,
    output signed [7:0] out
);

    assign out = {{4{in[3]}}, in};

endmodule