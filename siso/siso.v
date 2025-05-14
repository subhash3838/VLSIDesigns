module siso(clk,rst,sin,sout);
input clk,rst,sin;
output sout;

reg [3:0] shift_reg;

always@(posedge clk) begin
 if(rst)
 shift_reg<=4'b0000;
else
 shift_reg<={shift_reg[2:0],sin};
end
assign sout=shift_reg[3];
endmodule

