// MIGUEL BENAVIDES
// Flip Flop D

module Register #(
	parameter N=32
)

(	
	input [N-1:0] D,
	input clk, rst, en,  
	output reg [N-1:0] Q	
);

//always@(posedge clk, negedge rst) begin
always@(posedge clk or negedge rst) begin	
	if(!rst)
		Q <= 1'b0;
		
	else if (en)
		Q <= D;
	end
endmodule 