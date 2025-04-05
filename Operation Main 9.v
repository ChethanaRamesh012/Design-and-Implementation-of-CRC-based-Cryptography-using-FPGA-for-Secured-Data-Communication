module S_Opp_Main9(Box_Key,Change_Key,New_Key);
  input[31:0]Box_Key,Change_Key;
  output[31:0]New_Key;
  wire [31:0]Rcon;

assign Rcon=32'b0001_1011_0000_0000_0000_0000_0000_0000;
assign New_Key=Box_Key ^ Change_Key ^ Rcon;
endmodule



