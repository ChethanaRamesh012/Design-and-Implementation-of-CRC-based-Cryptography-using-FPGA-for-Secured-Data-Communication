module S_Single_round_AES(Test,Key,Code);
  
  input [127:0] Test,Key;
  
  output [127:0] Code;
  
  wire [127:0] A,B,C;
  
S_128bit_S_box S_Box (
                      .in(Test), 
                      .out(A)
                      );

S_Shift_Rows Shift_row (
                        .S_Box_out(A), 
                        .Shift_Rows(B)
                        );
 

S_Mixcolumn_128bit mixcolumn (
                              .In(B), 
                              .Out(C)
                             );

S_Add_round_key Add_round (
                           .Data(C), 
                           .key(Key), 
                           .out(Code)
                           );

endmodule

