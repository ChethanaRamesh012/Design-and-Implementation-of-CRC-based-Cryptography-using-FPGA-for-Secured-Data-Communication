module S_Inv_Mix_Column(a,b,c,d,Dec);
  input [7:0]a,b,c,d;
  output [7:0]Dec;
  wire [7:0]w1,w2,w3,w4,w5,w6,w7,w8,s1,s2,Enc;
   
assign w1=a^b;
assign w2=a^c;
assign w3=c^d;
assign s1=b^w3;

S_X_time xtime1  (
    .in(w1), 
    .out(w4)
    );

S_X_time xtime2  (
    .in(w3), 
    .out(w5)
    );
assign s2=w2^w5;
assign w6=s2^w4;
S_X_time xtime3  (
    .in(w6), 
    .out(w7)
    );
S_X_time xtime4  (
    .in(w7), 
    .out(w8)
    );
assign Enc=s1^w4;
assign Dec=w8^Enc;

endmodule
