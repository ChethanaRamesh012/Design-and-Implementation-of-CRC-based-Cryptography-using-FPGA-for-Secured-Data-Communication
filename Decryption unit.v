module S_Decryption_unit_AES(Cipher_text,Key,Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10,Plain_Text);
  input [127:0]Cipher_text;
  input [127:0]Key;
  input [127:0]Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10;
  output [127:0]Plain_Text;
  wire [127:0]A,B,C,D,E,F,G,H,I,J;
  
S_Add_round_key Add_round (
    .Data(Cipher_text), 
    .key(Round2key10), 
    .out(A)
    );

S_Inv_Single_round_AES Dkey1 (
    .Test(A), 
    .Key(Round2key9), 
    .Code(B)
    );

S_Inv_Single_round_AES Dkey2 (
    .Test(B), 
    .Key(Round2key8), 
    .Code(C)
    );

S_Inv_Single_round_AES Dkey3 (
    .Test(C), 
    .Key(Round2key7), 
    .Code(D)
    );

S_Inv_Single_round_AES Dkey4 (
    .Test(D), 
    .Key(Round2key6), 
    .Code(E)
    );

S_Inv_Single_round_AES Dkey5 (
    .Test(E), 
    .Key(Round2key5), 
    .Code(F)
    );

S_Inv_Single_round_AES Dkey6 (
    .Test(F), 
    .Key(Round2key4), 
    .Code(G)
    );

S_Inv_Single_round_AES Dkey7 (
    .Test(G), 
    .Key(Round2key3), 
    .Code(H)
    );

S_Inv_Single_round_AES Dkey8 (
    .Test(H), 
    .Key(Round2key2), 
    .Code(I)
    );

S_Inv_Single_round_AES Dkey9 (
    .Test(I), 
    .Key(Round2key1), 
    .Code(J)
    );

S_Final_decryption_AES final (
    .In(J), 
    .Key(Key), 
    .Out(Plain_Text)
    );

endmodule