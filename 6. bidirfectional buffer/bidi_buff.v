module bidi_buff(a,b,ctrl);

inout a,b;
input ctrl;

bufif1 b1(b,a,ctrl);
bufif0 b0(a,b,ctrl);

endmodule
