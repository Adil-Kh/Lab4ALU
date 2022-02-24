module ALU(a, b, sel, cin, out, stat);
	
	input signed[31:0] a, b;
	input [2:0] sel;
	input cin;
	
	output signed [31:0] out;
	output [3:0] stat;
	
	wire [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
	
	wire cout;
	
	adder m0 (a, b, cin, i0, cout); //assign i0 = a + b; //ADD make adder?
	assign i1 = a ^ b; //XOR
	assign i2 = a & b; //AND
	assign i3 = a | b; //OR
	assign i4 = ~(a | b); //NOR
	shifter m1 (a, b[4:0], i5, i6); //assign i5 = a >> b[4:0]; //SLR make shifter?
											  //assign i6 = a << b[4:0]; //SLL make shifter?
	assign i7 = a;
	
	mux8_1 m2 (i0, i1, i2, i3, i4, i5, i6, i7, sel, out);
	
	assign stat[3] = ((~a[31]) & (~b[31]) & out[31]) | (a[31] & b[31] & (~out[31])); //v - overflow
	assign stat[2] = (out==0) ? 1 : 0; //z - zero
	assign stat[1] = out[31]; //n - negative
	assign stat[0] = cout; //c - carryout flag
	
endmodule


	