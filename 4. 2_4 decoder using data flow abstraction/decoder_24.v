module decoder_24(en,a,b,y);

input en,a,b;
output [3:0]y;

wire ba,bb;

assign ba = en ? a : 1'bZ;
assign bb = en ? b : 1'bZ;

not n1(na,ba);
not n2(nb,bb);

and n3(y[0],na,nb);
and n4(y[1],na,bb);
and n5(y[2],ba,nb);
and n6(y[3],ba,bb);

endmodule



