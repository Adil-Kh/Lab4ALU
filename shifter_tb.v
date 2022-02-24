module shifter_tb(); //(A, B, right, left)
	
	reg [31:0] A;
	reg [4:0] B;
	
	wire [31:0] right, left;
	
	shifter dut (A, B, right, left);
	
	initial begin
		A = 32'b11111000000000000000000000011111;
		B = 0;
	end
	
	always
		#9 B <= B + 1;
	
	initial
		#100 $stop;

endmodule
