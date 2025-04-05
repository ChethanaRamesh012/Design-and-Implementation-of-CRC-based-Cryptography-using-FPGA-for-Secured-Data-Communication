module S_Inv_mixcolumn_word(a,b,c,d,out);
  input [7:0]a,b,c,d;
  output [31:0]out;
  
S_Inv_Mix_Column byte0 (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .Dec(out[31:24])
    );
    
    
S_Inv_Mix_Column byte1 (
    .a(b), 
    .b(c), 
    .c(d), 
    .d(a), 
    .Dec(out[23:16])
    );


S_Inv_Mix_Column byte2 (
    .a(c), 
    .b(d), 
    .c(a), 
    .d(b), 
    .Dec(out[15:8])
    );


S_Inv_Mix_Column byte3 (
    .a(d), 
    .b(a), 
    .c(b), 
    .d(c), 
    .Dec(out[7:0])
    );

endmodule


