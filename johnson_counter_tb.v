
module johnson_counter_tb(); 
reg rst, clock;
wire [3:0]count;

johnson_counter DUT(rst, clock, count);

initial
begin
	clock = 1'b0;
	forever #10 clock = ~clock;
end

task reset();
begin

	@(negedge clock)
		rst = 1'b0;
	@(negedge clock)
		rst = 1'b1;
end	
endtask

initial 
begin
	reset();
	#200 $finish;
end

initial 
begin
	$monitor("count = %b",count);
end


endmodule
