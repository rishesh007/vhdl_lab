module FA_using_1bitFA(a, b, cin,sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire c1,c2,c3;
FA f1 (a[0],b[0],cin,c1,sum[0]);
FA f2 (a[1],b[1],c1,c2,sum[1]);
FA f3 (a[2],b[2],c2,c3,sum[2]);
FA f4 (a[3],b[3],c3,cout,sum[3]);
endmodule

module FA(x,y,c,co,s);
input x,y,c;
output co,s;
assign s = x^y^c;
assign co = (x&y) | (c&(x^y));
endmodule
