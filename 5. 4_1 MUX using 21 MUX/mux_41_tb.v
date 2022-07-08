module mux_41_tb();

reg a,b,c,d;
reg s0,s1;
wire y;

mux_41(a,b,c,d,s0,s1,y);

initial
begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
s0 = 1'b0;
s1 = 1'b0;
end

initial
	begin
	    s0=1'b0; s1=1'b0; a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#10 s0=1'b0; s1=1'b1; a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#10 s0=1'b1; s1=1'b0; a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#10 s0=1'b1; s1=1'b1; a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#10;
	end
	
initial
$monitor("i0=%b, i1=%b, i2=%b, i3=%b, s0= %d  s1= %d  y= %d", a,b,c,d,s0,s1,y);

endmodule


