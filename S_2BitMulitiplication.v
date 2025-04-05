module S_2BitMulitiplication(X,Y,Z);
  
  input [1:0]X,Y;
  
  output [1:0]Z;
  
  wire c,d,e,f,g;
  
  and a1(e,X[1],Y[1]);
  and a2(f,c,d);
  and a3(g,X[0],Y[0]);
  xor x1(c,X[1],X[0]);
  xor x2(d,Y[0],Y[1]);
  xor x3(Z[1],f,g);
  xor x4(Z[0],e,g);
endmodule
