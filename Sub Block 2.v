module S_Block_2(Key,round2key);
  
  input [127:0]Key;
  
  output [31:0]round2key;
  
  wire [31:0]ChangeKey;
  
  wire [31:0]Collusion_Out;
  
S_Opp_Basic1 B1 (
                   .Key(Key), 
                   .ChangeKey1(ChangeKey)
                 );


S_Opp_Basic2 B2 (
                   .KeyChange_lastrow(ChangeKey), 
                   .Collusion_Out(Collusion_Out)
                 );


S_Opp_Main2 B3 (
                  .Box_Key(Key[127:96]), 
                  .Change_Key(Collusion_Out), 
                  .New_Key(round2key)
                );

endmodule
