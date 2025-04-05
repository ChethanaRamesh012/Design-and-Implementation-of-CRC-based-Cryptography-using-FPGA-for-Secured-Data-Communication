module S_Encryption_Sub(Plain_Test,Cipher_Test,Key,Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10);

  input [127:0]Plain_Test;
  
  input [127:0]Key;
  
  input [127:0]Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10;
  
  output [127:0]Cipher_Test;
  
  wire [127:0]A,B,C,D,E,F,G,H,I,J;
  
  S_Add_round_key  Add_round (
                              .Data(Plain_Test), 
                              .key(Key), 
                              .out(A)
                              );
    
S_Single_round_AES round1 (
                           .Test(A), 
                           .Key(Round2key1), 
                           .Code(B)
                          );
 
 S_Single_round_AES round2 (
                            .Test(B), 
                            .Key(Round2key2), 
                            .Code(C)
                           );
 
 S_Single_round_AES round3 (
                            .Test(C), 
                            .Key(Round2key3), 
                            .Code(D)
                           );
 
 S_Single_round_AES round4 (
                            .Test(D), 
                            .Key(Round2key4), 
                            .Code(E)
                           );
 
 S_Single_round_AES round5 (
                            .Test(E), 
                            .Key(Round2key5), 
                            .Code(F)
                           );
 
 S_Single_round_AES round6 (
                            .Test(F), 
                            .Key(Round2key6), 
                            .Code(G)
                           );
 
 S_Single_round_AES round7 (
                            .Test(G), 
                            .Key(Round2key7), 
                            .Code(H)
                           );
 
 S_Single_round_AES round8 (
                            .Test(H), 
                            .Key(Round2key8), 
                            .Code(I)
                           );
 
 S_Single_round_AES round9 (
                            .Test(I), 
                            .Key(Round2key9), 
                            .Code(J)
                           );
 
S_Final_round_AES final10 (
                           .in(J), 
                           .Key(Round2key10), 
                           .out(Cipher_Test)
                          );

endmodule
