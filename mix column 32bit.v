module S_mixcolumn_32bit(a,b,c,d,out);
  
  input [7:0]a,b,c,d;
  
  output [31:0]out;
  
  S_mix_Column_8bit T0 (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .Enc(out[31:24])
    );
    
    
S_mix_Column_8bit T1 (
    .a(b), 
    .b(c), 
    .c(d), 
    .d(a), 
    .Enc(out[23:16])
    );


S_mix_Column_8bit T2 (
    .a(c), 
    .b(d), 
    .c(a), 
    .d(b), 
    .Enc(out[15:8])
    );


S_mix_Column_8bit T3 (
    .a(d), 
    .b(a), 
    .c(b), 
    .d(c), 
    .Enc(out[7:0])
    );

endmodule


