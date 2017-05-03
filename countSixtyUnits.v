module countSixtyUnits(clk,reset,lowDigit,highDigit);
input clk , reset;
output reg [3:0] lowDigit = 0;
output reg [3:0] highDigit = 0;

always@(posedge clk , negedge reset)
begin
	if(~reset)
	begin
	lowDigit <= 0;
	highDigit <= 0;
	end
	else
	begin
		if(lowDigit == 9) 
		begin
		lowDigit <= 0;
			if (highDigit == 5) highDigit <= 0;
			else highDigit <= highDigit + 1;
		end
		else
		begin
			lowDigit <= lowDigit + 1;
		end
	end
end
endmodule


