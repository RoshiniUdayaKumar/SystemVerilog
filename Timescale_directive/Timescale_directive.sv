//demonstrating timescale directive (precision not observed)
`timescale 1ns/1ns
module tb();
  
  reg clk=1'b0;
  reg clk8=1'b0;
  
  always #31.25 clk=~clk;
    //16MHz clk 
  
  always #62.5 clk8=~clk8;

  //to display waveforms (used only for EDA playground)
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin 
    #200
    $finish();
  end 
  
endmodule

---------------------------------------------------------------
//demonstrating timescale directive (precision observed)
`timescale 1ns/1ps
module tb();
  
  reg clk=1'b0;
  reg clk8=1'b0;
  
  always #31.25 clk=~clk;
    //16MHz clk 
  
  always #62.5 clk8=~clk8;
    
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin 
    #200
    $finish();
  end 
  
endmodule


