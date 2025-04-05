module S_affine(i,q);

  input [7:0]i;

  output [7:0]q;

  assign q[7]=(i[7]^i[6]^i[5]^i[4]^i[3]);
  assign q[6]=~(i[6]^i[5]^i[4]^i[3]^i[2]);
  assign q[5]=~(i[5]^i[4]^i[3]^i[2]^i[1]);
  assign q[4]=(i[4]^i[3]^i[2]^i[1]^i[0]);
  assign q[3]=(i[7]^i[3]^i[2]^i[1]^i[0]);
  assign q[2]=(i[7]^i[6]^i[2]^i[1]^i[0]);
  assign q[1]=~(i[7]^i[6]^i[5]^i[1]^i[0]);
  assign q[0]=~(i[7]^i[6]^i[5]^i[4]^i[0]);

endmodule


