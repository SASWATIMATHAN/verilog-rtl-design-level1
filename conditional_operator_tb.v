module conditional_operator_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire [3:0] max_value;

    conditional_operator uut (
        .A(A),
        .B(B),
        .max_value(max_value)
    );

    initial begin
        A = 4'b0011;
        B = 4'b0010;
        #10;

        A = 4'b0010;
        B = 4'b0101;
        #10;

        A = 4'b0111;
        B = 4'b0111;
        #10;

        A = 4'b1001;
        B = 4'b0100;
        #10;

        A = 4'b0001;
        B = 4'b1111;
        #10;

        $stop;
    end

endmodule