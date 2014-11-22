`timescale 1 ps / 1 ps
module Counter(clock, reset, counter_enable, counterOut);
//input
	input clock ;
	input reset ;
	input counter_enable ;
//output
	output reg [15:0] counterOut ;

	//reg [15:0] counterOut ;
	

	always @ (posedge clock or posedge reset)
	begin
		if (reset == 1'b1) begin
			counterOut <= 16'h0000;
		end

		else if (counter_enable == 1'b1) begin
			counterOut <=  counterOut + 1;
		end
	end
endmodule

