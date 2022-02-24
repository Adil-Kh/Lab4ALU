module mux8_1(i0, i1, i2, i3, i4, i5, i6, i7, s, out);
	
	input [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
	input [2:0] s;
	
	output reg [31:0] out;
	
	always @ (s or i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7)
		begin case (s)
			3'b000: out <= i0;
			3'b001: out <= i1;
			3'b010: out <= i2;
			3'b011: out <= i3;
			3'b100: out <= i4;
			3'b101: out <= i5;
			3'b110: out <= i6;
			3'b111: out <= i7;
			default: out <= 0;
		endcase
	end	
	
endmodule
