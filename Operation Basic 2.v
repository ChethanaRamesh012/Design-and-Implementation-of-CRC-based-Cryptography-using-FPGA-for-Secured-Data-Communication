module S_Opp_Basic2(KeyChange_lastrow,Collusion_Out);
  
  input [31:0]KeyChange_lastrow;
  
  output [31:0]Collusion_Out;
  
  S_Sbox S1 (
    .in(KeyChange_lastrow[7:0]), 
    .out(Collusion_Out[7:0])
    );

S_Sbox S2 (
    .in(KeyChange_lastrow[15:8]), 
    .out(Collusion_Out[15:8])
    );
    
    S_Sbox S3 (
    .in(KeyChange_lastrow[23:16]), 
    .out(Collusion_Out[23:16])
    );
    
    S_Sbox S4 (
    .in(KeyChange_lastrow[31:24]), 
    .out(Collusion_Out[31:24])
    );

endmodule