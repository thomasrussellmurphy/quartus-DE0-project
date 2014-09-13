// It's a DFF in a box with a nice name on it.
module synchronizer( clk, ina, outs );
input wire clk;
input wire ina; // Async input
output reg outs; // Synced output

always @( posedge clk ) outs <= ina;
endmodule
