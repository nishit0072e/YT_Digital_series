//`include "structural_not.v"
//`include "dataflow_not.v"
`include "behavioral_not.v"
module not_tb();

reg a; //input is reg type because for simulation inputs of main module need to be stored 
wire y; //output is wire type because it used to show outputs only

//structural_not uut(a, y);
//dataflow_not uut(a, y);
behavioral_not uut(a, y);

initial begin
  $dumpfile("not.vcd");
  $dumpvars(0, not_tb);
  $monitor($time,"s","\ta=%b, y=%b",a,y);
  #5 a=0;
  #5 a=1;
  #10 $finish;
end
endmodule