module S_Isomorphic_Map(X,Y);
  
  input [7:0]X;
  
  output [7:0]Y;
  
  assign Y[7]=X[7]^X[5];
  
  assign Y[6]=X[7]^X[6]^X[4]^X[3]^X[2]^X[1];
  
  assign Y[5]=X[7]^X[5]^X[3]^X[2];
  
  assign Y[4]=X[7]^X[5]^X[3]^X[2]^X[1];
  
  assign Y[3]=X[7]^X[6]^X[2]^X[1];
  
  assign Y[2]=X[7]^X[4]^X[3]^X[2]^X[1];
  
  assign Y[1]=X[6]^X[4]^X[1];
  
  assign Y[0]=X[6]^X[1]^X[0];
  
endmodule
