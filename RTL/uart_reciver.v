module uart_reciver(
  input clk, rst, rx, rdy_clr, clk_en,
  output reg rdy,
  output reg [7:0] data_out
);
  
  parameter start_state     = 2'b00;
  parameter data_out_state  = 2'b01;
  parameter stop_state      = 2'b10;
  
  reg [1:0] state;
  reg [3:0] sample;
  reg [3:0] index;
  reg [7:0] temp_register;
  
  always @(posedge clk)
  begin
    if(rst) begin
      state <= start_state;
      rdy <= 0;
      data_out <= 0;
      sample <= 0;
      index <= 0;
      temp_register <= 0;
    end
    else begin
      
      if(rdy_clr)
        rdy <= 0;
      
      if(clk_en) begin
        case(state)
          
          // START BIT DETECTION
          start_state: begin
            if(rx == 0)
              sample <= sample + 1'b1;
            else
              sample <= 0;
            
            if(sample == 15) begin
              state <= data_out_state;
              sample <= 0;
              index <= 0;
            end
          end
          
          // DATA RECEIVING
          data_out_state: begin
            if(sample == 8)
              temp_register[index] <= rx;
            
            if(sample == 15) begin
              sample <= 0;
              if(index == 7)
                state <= stop_state;
              else
                index <= index + 1'b1;
            end
            else
              sample <= sample + 1'b1;
          end
          
          // STOP BIT
          stop_state: begin
            if(sample == 15) begin
              state <= start_state;
              data_out <= temp_register;
              rdy <= 1'b1;
              sample <= 0;
            end
            else
              sample <= sample + 1'b1;
          end
          
          default: begin
            state <= start_state;
          end
          
        endcase
      end
    end
  end
  
endmodule