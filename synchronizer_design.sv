// Code your design here

// Synchronizer for CDC (Clock Domain Crossing) 
module synchronizer(src_clk,dest_clk,reset,data_in,data_out);
  input src_clk, dest_clk,reset;
  input data_in ;
  output data_out ;
  wire w0to1, w1to2, w2to3 ;
  
  dff A(data_in,src_clk,reset,w0to1);
  dff B(w0to1,dest_clk,reset,w1to2);
  dff C(w1to2,dest_clk,reset,w2to3);
  dff D(w2to3,dest_clk,reset,data_out);
  
endmodule


// D flip flop module with asynchronous reset 
module dff(d,clk,reset,q);//,qb
  output reg q;
  input d,clk,reset;
  output qb;
  
  //assign qb = ~q;
  
  always@(posedge clk, posedge reset)
    begin
      if(reset) begin
          q<=1'b0;
        end
      else begin
          q<=d;
        end
    end
endmodule