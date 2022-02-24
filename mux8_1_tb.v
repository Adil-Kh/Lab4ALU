module mux8_1_tb();

	reg [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
	reg [2:0] s;
	
	wire [31:0] out;
	
	mux8_1 dut (i0, i1, i2, i3, i4, i5, i6, i7, s, out);
	
	initial begin
		i0 = 0;
		i1 = 10;
		i2 = 20;
		i3 = 30;
		i4 = 40;
		i5 = 50;
		i6 = 60;
		i7 = 70;
		s = 3'b000;
	end
	
	always
		#10 s = s + 1;
	
	initial
		#100 $stop;

endmodule
		