module S_InvAffine(q,i);
  
  input [7:0]q;
  
  output [7:0]i;
  
  assign i[7]=(q[6]^q[4]^q[1]);
  assign i[6]=(q[5]^q[3]^q[0]);
  assign i[5]=(q[7]^q[4]^q[2]);
  assign i[4]=(q[6]^q[3]^q[1]);
  assign i[3]=(q[5]^q[2]^q[0]);
  assign i[2]=~(q[7]^q[4]^q[1]);
  assign i[1]=(q[6]^q[3]^q[0]);
  assign i[0]=~(q[7]^q[5]^q[2]);
  
endmodule
