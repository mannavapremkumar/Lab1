module mux_41 (i, s, y);

input [3:0]i;
input [1:0]s;
output y;

wire [3:0]w;
wire [3:0]a;

decoder_24 u1(.a(s[0]), .b(s[1]), .y(w));

assign a[0] = i[0] ? w[0] : 1'bZ;
assign a[1] = i[1] ? w[1] : 1'bZ;
assign a[2] = i[2] ? w[2] : 1'bZ;
assign a[3] = i[3] ? w[3] : 1'bZ;

or or1(y,a[0],a[1],a[2],a[3]);


endmodule


