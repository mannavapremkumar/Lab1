module ripple_carry_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
integer i;

ripple_carry dut(a,b,cin,sum,carry);

initial
	begin
	a=4'b0; b=4'b0; cin=1'b0;
	end

initial
begin
     a=4'b1010; b=4'b0101; cin=1'b0;
#10; a=4'b1100; b=4'b1001; cin=1'b0;
#10; a=4'b1000; b=4'b1011; cin=1'b0;
#10; a=4'b1101; b=4'b0001; cin=1'b0;
end

initial
$monitor("input a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b,cin,sum,carry);

initial #800 $finish;

endmodule

