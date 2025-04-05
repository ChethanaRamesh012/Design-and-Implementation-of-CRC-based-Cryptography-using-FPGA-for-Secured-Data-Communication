module S_mix_Column_8bit(a,b,c,d,Enc);
  
  input [7:0]a,b,c,d;
  
  output [7:0]Enc;
  
  wire [7:0]x1,x3,x4,T1;
  
 
  
assign x1=a^b;
assign x3=c^d;
assign T1=b^x3;



S_X_time K1  (
    .in(x1), 
    .out(x4)
    );


assign Enc=T1^x4;

endmodule
