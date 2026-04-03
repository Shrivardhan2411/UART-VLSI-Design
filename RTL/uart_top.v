module uart_top (
  input rst,
  input clk,
  input [7:0] data_in,
  input wr_en,
  input rdy_clr,
  output rdy,
  output busy,
  output [7:0] data_out
);
  
  wire rx_clk_en;
  wire tx_clk_en;
  wire tx_line;  // loopback wire
  
  // Baud Rate Generator
  baud_rate_generator bg(
    .clock(clk),
    .reset(rst),
    .enb_tx(tx_clk_en),
    .enb_rx(rx_clk_en)
  );

  // Transmitter
  transmitter tx_unit(
    .clk(clk),
    .wr_enb(wr_en),
    .enb(tx_clk_en),
    .rst(rst),
    .data_in(data_in),
    .tx(tx_line),
    .busy(busy)
  );

  // Receiver (Loopback connection)
  uart_reciver rx_unit(
    .clk(clk),
    .rst(rst),
    .rx(tx_line),
    .rdy_clr(rdy_clr),
    .clk_en(rx_clk_en),
    .rdy(rdy),
    .data_out(data_out)
  );

endmodule