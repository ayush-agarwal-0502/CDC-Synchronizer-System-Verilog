// Code your design here

// D flip flop module with asynchronous reset 
module dff(d,clk,reset,q,qb);
  output reg q;
  input d,clk,reset;
  output qb;
  
  assign qb = ~q;
  
  always@(posedge clk, posedge reset)
    begin
      if(reset) begin
          q=1'b0;
        end
      else begin
          q=d;
        end
    end
endmodule