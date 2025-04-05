module S_Add_round_key(Data,key,out);
  input [127:0]Data,key;
  output [127:0]out;
  assign out=Data^key;
endmodule