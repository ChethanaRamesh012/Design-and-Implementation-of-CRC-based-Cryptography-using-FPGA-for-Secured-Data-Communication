module S_Inv_Isomorphic_Map(Y,X);
  
  input [7:0]Y;
  
  output [7:0]X;
  
  assign X[7]=Y[7]^Y[6]^Y[5]^Y[1];
  
  assign X[6]=Y[6]^Y[2];
  
  assign X[5]=Y[6]^Y[5]^Y[1];
  
  assign X[4]=Y[6]^Y[5]^Y[4]^Y[2]^Y[1];
  
  assign X[3]=Y[5]^Y[4]^Y[3]^Y[2]^Y[1];
  
  assign X[2]=Y[7]^Y[4]^Y[3]^Y[2]^Y[1];
  
  assign X[1]=Y[5]^Y[4];
  
  assign X[0]=Y[6]^Y[5]^Y[4]^Y[2]^Y[0];
  
endmodule

  


  