module S_Inv_Single_round_AES(Test,Key,Code);
  input [127:0] Test,Key;
  output [127:0] Code;
  wire [127:0] A,B,C;

S_Inv_Shift_Rows Shift_row (
    .S_Box_out(Test), 
    .Inv_Shift_Rows(A)
    );
  
S_128bit_Inv_Sbox S_Box (
    .in(A), 
    .out(B)
    );

S_Add_round_key Add_round (
    .Data(B), 
    .key(Key), 
    .out(C)
    );

S_Inv_Mixcolumn_128bit mixcolumn (
    .DataIn(C), 
    .DataOut(Code)
    );


endmodule

