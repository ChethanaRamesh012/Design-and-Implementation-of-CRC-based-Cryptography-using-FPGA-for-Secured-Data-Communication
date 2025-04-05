module Regis (Clk,Rst,In,Out);
  input Clk,Rst;
  input [127:0]In;
  output reg [127:0]Out;
  
  always @ (posedge Clk)
  begin
  if (Rst)
    Out = 128'd0;
  else
    Out = In;
  end
  
endmodule