module S_Square_Block(X,Y);
  input [3:0]X;
  output [3:0]Y;
wire c;  
xor x1(c,X[0],X[1]);
xor x2(Y[1],X[1],X[2]);
xor x3(Y[2],X[2],X[3]);
xor x4(Y[0],X[3],c);
assign Y[3]=X[3];
endmodule

