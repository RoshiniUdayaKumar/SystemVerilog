//use of an initial block 
`timescale 1ns/1ps

//module declaration 
module tb();
  
  reg clk;
  reg rst;
  reg [3:0] tmp;
  
  //1. initialize the variables 
  initial begin 
    clk=1'b0;
    rst=1'b1;
    #10
    clk=1'b1;
    rst=1'b0;   
  end
  
  //2. Generate random values for data/control signals 
  initial begin 
    tmp=4'b0101;
    #10
    tmp=4'b1010;
    #10
    tmp=4'b0010;   
  end
  
  //3.Display values on the console 
  initial begin 
    $monitor("Value of temp:%d at time:%0t", tmp, $time);
  end
  
  //4.Display the waveform 
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;   
  end
  
endmodule
