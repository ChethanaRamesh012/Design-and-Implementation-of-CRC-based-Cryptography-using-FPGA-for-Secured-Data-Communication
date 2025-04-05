module S_4bitAdd(X,Y,Z);
  
  input[3:0]X,Y;
  
  output [3:0]Z;
  
  xor x1(Z[0],X[0],Y[0]);
  
  xor x2(Z[1],X[1],Y[1]);
  
  xor x3(Z[2],X[2],Y[2]);
  
  xor x4(Z[3],X[3],Y[3]);
  
endmodule 