module S_Multiplicative_Inv(A,B);
  input [3:0]A;
  output [3:0]B;
  wire [3:0]a,b,c,d;
  
S_Square_Block VA1 (
    .X(A), 
    .Y(a)
    );

S_Square_Block VA2 (
    .X(a), 
    .Y(b)
    );

S_Square_Block VA3 (
    .X(b), 
    .Y(c)
    );

S_4bitmulitiplication VA4 (
    .A(a), 
    .B(b), 
    .D(d)
    );

S_4bitmulitiplication VA5 (
    .A(d), 
    .B(c), 
    .D(B)
    );

endmodule 