module adder_tb(); //(A, B, Cin, Sum, Cout);

	reg [31:0] A, B;
	reg Cin;
	
	wire [31:0] Sum;
	wire Cout;
	
	adder dut (A, B, Cin, Sum, Cout);
	
	initial begin
		A = -50;
		B = -500;
		Cin = 0;
	end
	
	always
		#100 Cin <= ~Cin;
		
	always begin
		#10 A <= A + 32'd10;
		B <= B + 32'd100;
		#5;
	end
	
	initial
		#500 $stop;
		
endmodule
		