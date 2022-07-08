module mux_41(a,b,c,d,s0,s1,y);

input a,b,c,d,s0,s1;
output y;
wire w0,w1;

mux_21 m1(a,b,s0,w0);
mux_21 m2(c,d,s0,w1);
mux_21 m3(w0,w1,s1,y);

endmodule

