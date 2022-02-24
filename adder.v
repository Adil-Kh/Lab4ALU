module adder(A, B, Cin, Sum, Cout);
	
	input signed [31:0] A, B;
	input Cin;
	
	output signed [31:0] Sum;
	output Cout;
	
	//wire [32:0] temp;
	//assign temp = {1'b0,A} + {1'b0,B};
	
	FA_32bit a0 (A, B, Cin, Sum, Cout);//temp[32]);
	
	//assign Cout = temp[32];
	
endmodule
