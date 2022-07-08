module mux_41_tb();

reg [0:3]i;
reg [1:0]s;
wire y;

mux_41 DUT(i,s,y);

initial
begin
i[0] = 1'b0;
i[1] = 1'b0;
i[2] = 1'b0;
i[3] = 1'b0;
s[0] = 1'b0;
s[1] = 1'b0;
end

initial
	begin
	    s[0]=1'b0; s[1]=1'b0; i[0]=1'b1; i[1]=1'b0; i[2]=1'b0; i[3]=1'b0;
	#10 s[0]=1'b0; s[1]=1'b1; i[0]=1'b0; i[1]=1'b1; i[2]=1'b0; i[3]=1'b0;
	#10 s[0]=1'b1; s[1]=1'b0; i[0]=1'b0; i[1]=1'b0; i[2]=1'b1; i[3]=1'b0;
	#10 s[0]=1'b1; s[1]=1'b1; i[0]=1'b0; i[1]=1'b0; i[2]=1'b0; i[3]=1'b1;
	#10;
	end
	
initial
$monitor("i0=%b, i1=%b, i2=%b, i3=%b, s0= %d  s1= %d  y= %d", i[0],i[1],i[2],i[3],s[0],s[1],y);

endmodule


