module piso(clk,rst,en,pin,sout);
input clk,rst,en;
input [3:0] pin;
output sout;

reg [3:0] shift_reg;

always@(posedge clk) begin
if(rst)
 shift_reg<= 4'b0000;
else if(en)
 shift_reg<= pin;
else
  shift_reg<= (shift_reg>>1);
end

assign sout=shift_reg[0];

endmodule

