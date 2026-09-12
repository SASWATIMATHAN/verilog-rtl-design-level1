module bitwise_operators_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire [3:0] and_out;
    wire [3:0] or_out;
    wire [3:0] xor_out;
    wire [3:0] not_out;

    bitwise_operators uut (
        .A(A),
        .B(B),
        .and_out(and_out),
        .or_out(or_out),
        .xor_out(xor_out),
        .not_out(not_out)
    );

    initial begin
        A = 4'b1010;
        B = 4'b1100;
        #10;

        A = 4'b1111;
        B = 4'b0000;
        #10;

        A = 4'b0101;
        B = 4'b0011;
        #10;

        A = 4'b1001;
        B = 4'b0110;
        #10;

        $stop;
    end

endmodule