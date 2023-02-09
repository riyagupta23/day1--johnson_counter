//DAY 1 - JOHNSON COUNTER

module johnson_counter(input rst, clock,
		       output reg [3:0] count);
always@(posedge clock)
	begin
		if(!rst)
			count <= 4'b0;
		else
			count <= {~(count[0]),count[3:1]};
	end

endmodule
