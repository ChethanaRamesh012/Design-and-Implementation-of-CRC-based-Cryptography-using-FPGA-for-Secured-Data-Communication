module S_Opp_Main1(Box_Key,Change_Key,New_Key);
  
  input[31:0]Box_Key,Change_Key;
  
  output[31:0]New_Key;
  
  wire [31:0]Rcon;

assign Rcon=32'b0000_0001_0000_0000_0000_0000_0000_0000;

assign New_Key=Box_Key ^ Change_Key ^ Rcon;

endmodule


/*
 ___       ___       ___       ___
| B |     | C |     | R |     | N |
| O |     | H |     | C |     | E |
| X |     | A |     | O |     | W |
|   |     | N |     | N |     |   |
| K |  ^  | G |  ^  |   |  =  | K |
| E |     | E |     |   |     | E |
| Y |     |   |     |   |     | Y |
|   |     | K |     |   |     |   |
|   |     | E |     |   |     |   |
|   |     | Y |     |   |     |   |
 ---       ---       ---       ---    
*/

