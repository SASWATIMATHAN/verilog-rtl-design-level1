module shift_operators (
    input  [3:0] A,
    output [3:0] left_shift,
    output [3:0] right_shift
);

    assign left_shift  = A << 1;
    assign right_shift = A >> 1;

endmodule