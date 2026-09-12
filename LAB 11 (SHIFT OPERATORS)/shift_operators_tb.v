module shift_operators_tb;

    reg [3:0] A;

    wire [3:0] left_shift;
    wire [3:0] right_shift;

    shift_operators uut (
        .A(A),
        .left_shift(left_shift),
        .right_shift(right_shift)
    );

    initial begin
        A = 4'b0001;
        #10;

        A = 4'b0010;
        #10;

        A = 4'b0101;
        #10;

        A = 4'b1010;
        #10;

        A = 4'b1111;
        #10;

        $stop;
    end

endmodule