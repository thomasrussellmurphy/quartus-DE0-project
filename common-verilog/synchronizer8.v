// Damn! Eight boxes containing DFFs, now with a nice name!
module synchronizer8 ( clk, ina, outs );
input wire clk;
input wire [ 7: 0 ] ina;
output wire [ 7: 0 ] outs;

synchronizer s0( clk, ina[ 0 ], outs[ 0 ] );
synchronizer s1( clk, ina[ 1 ], outs[ 1 ] );
synchronizer s2( clk, ina[ 2 ], outs[ 2 ] );
synchronizer s3( clk, ina[ 3 ], outs[ 3 ] );
synchronizer s4( clk, ina[ 4 ], outs[ 4 ] );
synchronizer s5( clk, ina[ 5 ], outs[ 5 ] );
synchronizer s6( clk, ina[ 6 ], outs[ 6 ] );
synchronizer s7( clk, ina[ 7 ], outs[ 7 ] );

endmodule
