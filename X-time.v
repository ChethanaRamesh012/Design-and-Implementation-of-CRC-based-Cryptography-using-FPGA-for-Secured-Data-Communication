module S_X_time(in,out);
  input [7:0]in;
  output [7:0]out;
  xor x1(out[4],in[7],in[3]);
  xor x2(out[3],in[7],in[2]);
  xor x3(out[1],in[7],in[0]);
  assign out[0]=in[7];
  assign out[2]=in[1];
  assign out[5]=in[4]; 
  assign out[6]=in[5];
  assign out[7]=in[6]; 
endmodule