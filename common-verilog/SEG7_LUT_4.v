module SEG7_LUT_4 ( oSEG0, oSEG0_DP, oSEG1, oSEG1_DP, oSEG2, oSEG2_DP, oSEG3, oSEG3_DP, iDIG );
input	[ 15: 0 ] iDIG;
output	[ 6: 0 ] oSEG0, oSEG1, oSEG2, oSEG3;
output	oSEG0_DP, oSEG1_DP, oSEG2_DP, oSEG3_DP;

SEG7_LUT	u0	( oSEG0, oSEG0_DP, iDIG[ 3: 0 ] );
SEG7_LUT	u1	( oSEG1, oSEG1_DP, iDIG[ 7: 4 ] );
SEG7_LUT	u2	( oSEG2, oSEG2_DP, iDIG[ 11: 8 ] );
SEG7_LUT	u3	( oSEG3, oSEG3_DP, iDIG[ 15: 12 ] );

endmodule
