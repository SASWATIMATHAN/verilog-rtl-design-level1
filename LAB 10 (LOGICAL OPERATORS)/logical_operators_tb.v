module logical_operators_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire and_out;
    wire or_out;
    wire not_out;

    logical_operators uut (
        .A(A),
        .B(B),
        .and_out(and_out),
        .or_out(or_out),
        .not_out(not_out)
    );

    initial begin
        A = 4'b0000;
        B = 4'b0000;
        #10;

        A = 4'b1010;
        B = 4'b0000;
        #10;

        A = 4'b0000;
        B = 4'b1100;
        #10;

        A = 4'b1010;
        B = 4'b1100;
        #10;

        A = 4'b1111;
        B = 4'b1111;
        #10;

        $stop;
    end

endmodule