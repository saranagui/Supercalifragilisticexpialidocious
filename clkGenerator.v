module clkGenerator(clkIn,clkOut);
input  clkIn;
output reg clkOut= 0;
reg [24:0] counter = 0;

always @(posedge clkIn) 
begin
    if (counter == 0) begin
        counter <= 24999999;
        clkOut <= ~clkOut;
    end else begin
        counter <= counter -1;
    end
end
endmodule