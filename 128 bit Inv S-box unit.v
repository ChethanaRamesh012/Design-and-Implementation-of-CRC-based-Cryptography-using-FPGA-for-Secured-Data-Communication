module S_128bit_Inv_Sbox(in,out);
  input [127:0]in;
  output [127:0]out;


S_Inv_Sbox S1 (
    .in(in[127:120]), 
    .out(out[127:120])
    );

S_Inv_Sbox S2 (
    .in(in[119:112]), 
    .out(out[119:112])
    );

S_Inv_Sbox S3 (
    .in(in[111:104]), 
    .out(out[111:104])
    );

S_Inv_Sbox S4 (
    .in(in[103:96]), 
    .out(out[103:96])
    );

S_Inv_Sbox S5 (
    .in(in[95:88]), 
    .out(out[95:88])
    );

S_Inv_Sbox S6 (
    .in(in[87:80]), 
    .out(out[87:80])
    );

S_Inv_Sbox S7 (
    .in(in[79:72]), 
    .out(out[79:72])
    );

S_Inv_Sbox S8 (
    .in(in[71:64]), 
    .out(out[71:64])
    );

S_Inv_Sbox S9 (
    .in(in[63:56]), 
    .out(out[63:56])
    );

S_Inv_Sbox S10 (
    .in(in[55:48]), 
    .out(out[55:48])
    );

S_Inv_Sbox S11 (
    .in(in[47:40]), 
    .out(out[47:40])
    );

S_Inv_Sbox S12 (
    .in(in[39:32]), 
    .out(out[39:32])
    );

S_Inv_Sbox S13 (
    .in(in[31:24]), 
    .out(out[31:24])
    );

S_Inv_Sbox S14 (
    .in(in[23:16]), 
    .out(out[23:16])
    );

S_Inv_Sbox S15 (
    .in(in[15:8]), 
    .out(out[15:8])
    );

S_Inv_Sbox S16 (
    .in(in[7:0]), 
    .out(out[7:0])
    );

endmodule