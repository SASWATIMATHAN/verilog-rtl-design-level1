module wire_reg_demo (
    input  wire a,
    input  wire b,
    output wire y_wire,
    output reg  y_reg
);

    // Continuous assignment using wire
    assign y_wire = a & b;

    // Procedural assignment using reg
    always @(*) begin
        y_reg = a & b;
    end

endmodule