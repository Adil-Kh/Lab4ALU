module zero_comparator(num, eq);
	
	input [31:0] num;
	
	output eq;
	
	assign eq = (num==0) ? 1 : 0;
	
endmodule
