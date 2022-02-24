module zero_comparator_tb();
	
	reg [31:0] num;
	
	wire eq;
	
	zero_comparator dut (num, eq);
	
	initial begin
		num = 10;
	end
	
	always begin
		#5 num = num - 2;
	end
	
	initial
		#50 $stop;
	
endmodule
	