module baud_rate_generator(
  input clock,
  input reset,
  output reg enb_tx,
  output reg enb_rx
);

  parameter clk_freq = 100_000_000;
  parameter baud_rate = 9600;

  reg [13:0] counter_tx;
  reg [13:0] counter_rx;

  localparam divisor_tx = clk_freq / baud_rate;
  localparam divisor_rx = clk_freq / (16 * baud_rate);

  // TX CLOCK
  always @(posedge clock)
  begin        
    if(reset) begin
      counter_tx <= 0;
      enb_tx <= 0;
    end
    else begin
      enb_tx <= 0;  // default
      
      if(counter_tx == divisor_tx - 1) begin
        enb_tx <= 1;
        counter_tx <= 0;
      end
      else begin
        counter_tx <= counter_tx + 1;
      end
    end
  end          

  // RX CLOCK
  always @(posedge clock)
  begin            
    if(reset) begin
      counter_rx <= 0;
      enb_rx <= 0;
    end
    else begin
      enb_rx <= 0;  // default
      
      if(counter_rx == divisor_rx - 1) begin
        enb_rx <= 1;
        counter_rx <= 0;
      end
      else begin
        counter_rx <= counter_rx + 1;
      end
    end
  end    

endmodule
