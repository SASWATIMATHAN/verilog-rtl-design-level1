module operator_precedence_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;

    wire [7:0] result1;
    wire [7:0] result2;

    operator_precedence uut (
        .A(A),
        .B(B),
        .C(C),
        .result1(result1),
        .result2(result2)
    );

    initial begin
        A = 4'b0010;
        B = 4'b0011;
        C = 4'b0100;
        #10;

        A = 4'b0001;
        B = 4'b0010;
        C = 4'b0011;
        #10;

        A = 4'b0100;
        B = 4'b0010;
        C = 4'b0011;
        #10;

        $stop;
    end

endmodule