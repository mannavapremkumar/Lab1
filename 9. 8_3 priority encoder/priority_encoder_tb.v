`timescale 1ns/1ns
module priority_encoder_tb();
 reg [7:0] din;
 wire[2:0] dout;
 wire valid;
 
 priority_encoder DUT(din, dout, valid);
 
 initial
	begin
	$monitor($time, "Data Input=%b, Output=%b, Valid=%b", din, dout, valid);
	 #10 din=8'b11001100;
	 #10 din=8'b01100110; 
	 #10 din=8'b00110011; 
	 #10 din=8'b00010010; 
	 #10 din=8'b00001001; 
	 #10 din=8'b00000100; 
	 #10 din=8'b00000011; 
	 #10 din=8'b00000001; 
	 #10 din=8'b00000000; 
	 #10 $finish;
	end

endmodule
