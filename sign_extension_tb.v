module sign_extension_tb;

    reg signed [3:0] in;
    wire signed [7:0] out;

    sign_extension uut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0000;
        #10;

        in = 4'b0101;
        #10;

        in = 4'b0111;
        #10;

        in = 4'b1000;
        #10;

        in = 4'b1011;
        #10;

        in = 4'b1111;
        #10;

        $stop;
    end

endmodule