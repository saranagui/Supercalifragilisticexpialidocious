module counter(clkFiftyMghz,reset,highDigit,lowDigit);
input wire clkFiftyMghz, reset;
output wire [6:0] highDigit,lowDigit;
wire clkHz; 
wire [3:0] cHigh, cLow; 

clkGenerator (clkFiftyMghz,clkHz);
countSixtyUnits (clkHz,reset,cLow,cHigh);
sevenSegmentsDecoder (cHigh,highDigit);
sevenSegmentsDecoder (cLow,lowDigit);

endmodule