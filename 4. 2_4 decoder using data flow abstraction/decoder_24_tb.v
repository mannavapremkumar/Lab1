module decoder_24_tb();

reg a,b,en;
wire [3:0]y;

decoder_24 dut(en,a,b,y);

  initial
    begin
      $monitor("en=%b a=%b b=%b y=%b",en,a,b,y);
     
      en=0;a=1'b0;b=1'b1;#5
      en=1;a=0;b=0;#5
      en=1;a=0;b=1;#5
      en=1;a=1;b=0;#5
      en=1;a=1;b=1;#5
      
      $finish;
    end

endmodule



