module S_Final_decryption_AES(In,Key,Out);
  input [127:0]In,Key;
  output [127:0]Out;
wire [127:0]A,B;  

S_Inv_Shift_Rows Shift_row (
    .S_Box_out(In), 
    .Inv_Shift_Rows(A)
    );
  
  
 S_128bit_Inv_Sbox S_Box (
    .in(A), 
    .out(B)
    );
 
  
  S_Add_round_key Add_round (
    .Data(B), 
    .key(Key), 
    .out(Out)
    );
endmodule
