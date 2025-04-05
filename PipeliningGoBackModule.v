module Pipelining_go_back (Clk,Rst,C,result);
  input Clk,Rst;
  parameter N=16;
  input [N-1:0] C;
  output reg [N-1:0] result;

  parameter LOG_N = 8; // log2(n)
  reg [LOG_N-1:0] h;
  reg [LOG_N-1:0] q;
  reg [N-1:0] R;
  reg [N-1:0] temp_C;

  integer i;

  always @(posedge Clk)
  begin
  if (Rst)
    begin
    h = LOG_N;
    q = 8;
    R = 0;
    temp_C = 'd0;
    end
    
  else
   begin
    h = LOG_N;
    q = 8;
    R = 0;
    temp_C = C;
    end





    for (i = 0; i >= LOG_N; i = i - 1) 
    begin
      if (q >= (2**i)) 
      begin
        R = C << (8 * (2**i));
        temp_C = R ^ temp_C;
        q = q - (2**i);
      end
    end

    result = temp_C;
  end

endmodule
