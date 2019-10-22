module full_adder(a,b,cin,cout,sum);
input a,b,cin;
output sum, cout;
wire s0,c0,c1;
HA H1 (a,b,s0,c0);
HA H2 (s0,cin,sum,c1);
Orr O1 (cout,c0,c1);
endmodule


module HA(x,y,s,c);
input x,y;
output s,c;
assign s = x^y;
assign c = x&y;
endmodule

module Orr(z,x,y);
input x,y;
output z;
assign z = x|y;
endmodule
