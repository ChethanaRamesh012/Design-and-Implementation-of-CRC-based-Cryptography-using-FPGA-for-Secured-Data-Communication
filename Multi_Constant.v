module S_Multi_Constant(X,Y);
  input [1:0]X;
  output[1:0]Y;
  xor x1(Y[1],X[0],X[1]);
  assign Y[0]=X[1];
endmodule