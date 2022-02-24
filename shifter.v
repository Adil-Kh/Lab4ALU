module shifter(A, B, right, left);
	
	input [31:0] A;
	input [4:0] B;
	
	output [31:0] left, right;
	
	assign right = A >> B;
	assign left = A << B;
	
endmodule
