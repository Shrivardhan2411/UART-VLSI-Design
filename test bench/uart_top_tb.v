module uart_top_tb;
  
  reg clk, rst;
  reg [7:0] data_in;
  reg wr_en;
  reg rdy_clr;

  wire rdy;
  wire [7:0] dout;
  wire busy;
  
  uart_top dut(
    .rst(rst),
    .clk(clk),
    .data_in(data_in),
    .wr_en(wr_en),
    .rdy_clr(rdy_clr),
    .rdy(rdy),
    .busy(busy),
    .data_out(dout)
  );
  
  // Clock generation
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 0;
    data_in = 0;
    rdy_clr = 0;
    wr_en = 0;
  end
  
  // Waveform dump
  initial begin
    $dumpfile("uart.vcd");
    $dumpvars(0, uart_top_tb);
  end
  
  // Task: Send byte
  task send_byte(input [7:0] din);
    begin
      @(negedge clk);
      data_in = din;
      wr_en = 1'b1;
      @(negedge clk);
      wr_en = 0;
    end
  endtask
  
  // Task: Clear ready
  task clear_ready;
    begin
      @(negedge clk);
      rdy_clr = 1'b1;
      @(negedge clk);
      rdy_clr = 1'b0;
    end
  endtask
  
  initial begin
    // Reset
    rst = 1;
    repeat(5) @(negedge clk);
    rst = 0;
    
    // Test 1
    send_byte(8'h41);
    wait(!busy);
    wait(rdy);
    #10;
    $display("Received data is %h", dout);
    clear_ready;
    
    // Test 2
    send_byte(8'h55);
    wait(!busy);
    wait(rdy);
    #10;
    $display("Received data is %h", dout);
    clear_ready;
    
    #400 $finish;
  end

endmodule