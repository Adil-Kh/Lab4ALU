module ALU_tb();
	
	reg [31:0] a, b;
	reg [2:0] sel;
	reg cin;
	
	wire [31:0] out;
	wire [3:0] stat;
	
	ALU dut (a, b, sel, cin, out, stat);
	//Duran_Lab4 dut (a, b, sel, cin, out, stat);

	initial begin
		cin = 0;
		sel = 3'b000;
	end
	
	always
		#10 sel = sel + 1;
		
	always
		#50 cin = ~cin;
	
	always begin
		#80 a = 32'b10001101110111000100111000001110;
		b = 32'b10001000000000111111000000011101;
		#80 a = 32'b00110011001100110011001100110011;
		b = 32'b01010101010101010101010101010101;
		#80 a = 32'b11111000000000000000000000011111;
		b = 32'b00000000000000000000000000000011;
		#80 a = 32'b11111111111111111111111111111111;
		b = 32'b00000000000000000000000000000001;
	end
	
	initial
		#400 $stop;

endmodule
