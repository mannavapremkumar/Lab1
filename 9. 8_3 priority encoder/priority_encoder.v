module priority_encoder(din, dout, valid);

input [7:0] din;
output [2:0] dout;
output valid;
wire dn6, dn5, dn4, dn2;
wire wa0, wa1, wa2, wa3, wa4;

not g1 (dn6, din[6]);
not g2 (dn5, din[5]);
not g3 (dn4, din[4]);
not g4 (dn2, din[2]);

and g5 (wa0, dn6, dn4, din[3]);
and g6 (wa1, dn5, dn4, din[3]);
and g7 (wa2, dn5, dn4, din[2]);
and g8 (wa3, dn6, din[5]);
and g9 (wa4, dn6, dn4, dn2, din[1]);

or g11(dout[2], din[7], din[6], din[5],din[4]);
or g12(dout[1], din[7], din[6], wa1, wa2);
or g13(dout[0], din[7], wa0, wa3, wa4);

or g14(valid, din[0], din[1], din[2], din[3],din[4], din[5], din[6], din[7]);
endmodule

