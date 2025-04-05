module S_Multi_Constant_lambda(A,B);
  
  input [3:0]A;
  output [3:0]B;
  
  xor x1(c,A[1],A[3]);
  xor x2(d,A[0],A[2]);
  xor x3(e,d,c);
  assign B[0]=A[2];
  assign B[1]=A[3];
  assign B[2]=e;
  assign B[3]=d;
  
endmodule
