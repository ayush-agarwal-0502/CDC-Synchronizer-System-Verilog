// Code your testbench here
// or browse Examples

module test_sync;
  reg src_clk,dest_clk,reset,data_in;
  wire data_out;
  
  synchronizer S(src_clk,dest_clk,reset,data_in,data_out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    src_clk=0;
    dest_clk=0;
    data_in=0;
    reset=1;
    #1;
    reset=0;
  end
  
  always begin
    #2;
    src_clk = ~src_clk;
    #1;
  end
  
  always begin
    #3;
    dest_clk = ~dest_clk;
  end
  
  initial begin
    #1;
    data_in=1;
    #1;
    data_in=1;
    #5;
    data_in=0;
    #5;
    data_in=0;
    #5;
    data_in=1;
    #5;
    data_in=1;
    #5;
    data_in=0;
    #5;
    data_in=1;
    #5;
    $finish;
  end
  
endmodule