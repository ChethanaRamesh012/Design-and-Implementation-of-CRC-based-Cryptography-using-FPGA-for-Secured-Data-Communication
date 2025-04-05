module S_2bitAdd(X,Y,Z);
  
  input[1:0]X,Y;
  
  output [1:0]Z;
  
  xor x1(Z[0],X[0],Y[0]);
  
  xor x2(Z[1],X[1],Y[1]);
  
endmodule
