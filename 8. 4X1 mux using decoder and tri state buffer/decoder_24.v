module decoder_24(a,b,y);

input a,b;
output [3:0]y;

wire na,nb;

not n1(na,a);
not n2(nb,b);

nand n3(y[0],na,nb);
nand n4(y[1],na,b);
nand n5(y[2],a,nb);
nand n6(y[3],a,b);

endmodule


