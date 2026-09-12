module reduction_operators_tb;

    reg [3:0] in;
    wire and_out;
    wire or_out;
    wire xor_out;

    reduction_operators uut (
        .in(in),
        .and_out(and_out),
        .or_out(or_out),
        .xor_out(xor_out)
    );

    initial begin
        in = 4'b0000;
        #10;

        in = 4'b1111;
        #10;

        in = 4'b1011;
        #10;

        in = 4'b1000;
        #10;

        in = 4'b0101;
        #10;

        in = 4'b0111;
        #10;

        $stop;
    end

endmodule