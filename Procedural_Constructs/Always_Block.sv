//demonstration of always block
`timescale 1ns/1ps

//module declaration 
module tb();
  
  reg clk=1'b0; //100MHz clk
  reg clk50=1'b0;//50MHz clk
  reg clk25=1'b0;//25MHz clk

//using always to generate a clk signal 
  always #5 clk=~clk;
  
//generating multiple clock signals
  always #10 clk50=~clk50;
  
  always #20 clk25=~clk25;
  
  
  //display the waveform (only for EDA playground)
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;    
  end
  
  //force stop the simulation 
  initial begin 
    #200
    $finish();    
  end
  
endmodule
