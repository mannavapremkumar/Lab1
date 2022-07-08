module full_adder1(a,b,cin,sum,carry);

input a,b,cin;
output sum,carry;
wire w1,w2,w3,w4,w5;

xor x1(w1,a,b);
xor x2(sum,w1,cin);

and a1(w3,a,b);
and a2(w4,b,cin);
and a3(w5,a,cin);

or o1(carry,w3,w4,w5);

endmodule

