module zero_extension_tb;

    reg [3:0] in;
    wire [7:0] out;

    zero_extension uut (
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