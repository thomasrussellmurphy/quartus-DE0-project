module edge_to_pulse( clk, in, out );
input wire clk;
input wire in;

output reg out;

reg last_in;

always @( posedge clk ) begin
    last_in <= in;
    if ( ~last_in & in ) begin
        out <= 1'b1;
    end
    else begin
        out <= 1'b0;
    end
end

endmodule
