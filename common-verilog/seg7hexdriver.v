// Active-low 7-segment display driver for hex values
module seg7hexdriver ( value, display );
input wire	[ 3: 0 ] value; // hex input
output reg	[ 6: 0 ] display;

always @( value ) begin
    case ( value )
        4'h1:
            display = 7'b1111001;
        4'h2:
            display = 7'b0100100;
        4'h3:
            display = 7'b0110000;
        4'h4:
            display = 7'b0011001;
        4'h5:
            display = 7'b0010010;
        4'h6:
            display = 7'b0000010;
        4'h7:
            display = 7'b1111000;
        4'h8:
            display = 7'b0000000;
        4'h9:
            display = 7'b0011000;
        4'ha:
            display = 7'b0001000;
        4'hb:
            display = 7'b0000011;
        4'hc:
            display = 7'b1000110;
        4'hd:
            display = 7'b0100001;
        4'he:
            display = 7'b0000110;
        4'hf:
            display = 7'b0001110;
        4'h0:
            display = 7'b1000000;
    endcase
end
endmodule
