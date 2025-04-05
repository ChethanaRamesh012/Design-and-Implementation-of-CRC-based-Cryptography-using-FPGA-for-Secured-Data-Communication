module LFSR_16bit (
  input wire clk,
  input wire reset,
  output wire [15:0] lfsr_output
);

  reg [15:0] lfsr_state;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      lfsr_state <= 16'b1;
    end else begin
      lfsr_state <= {lfsr_state[14:0], lfsr_state[15] ^ lfsr_state[13]}; // Feedback polynomial: x^16 + x^14 + 1
    end
  end

  assign lfsr_output = lfsr_state;

endmodule
