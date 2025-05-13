module mux_2to1(a,b,sel,o);
input a,b,sel;
output o;
assign o=(sel)?b:a;
endmodule

module allgates(a,b,and1,or1,not1,xor1,nand1,nor1);
input a,b;
output and1,or1,not1,xor1,nand1,nor1;
mux_2to1 m1(0,b,a,and1);
mux_2to1 m2(b,1,a,or1);
mux_2to1 m3(1,0,a,not1);
mux_2to1 m4(b,(~b),a,xor1);
mux_2to1 m5(1,(~b),a,nand1);
mux_2to1 m6((~b),0,a,nor1);
endmodule
