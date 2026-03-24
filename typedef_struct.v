// Code your testbench here
// or browse Examples
module tb;
  typedef struct {string name;bit [31:0] salary;int id; }trainer;
  initial
    begin
      trainer trainer1,trainer2;
      trainer1='{"dharani",'h10000,'d5555};
      $display("name=%0s salary=%0h id=%0d",trainer1.name,trainer1.salary,trainer1.id);
      trainer2='{"gayathri",'h10010,'d5596};
      $display("name=%0s salary=%0h id=%0d",trainer2.name,trainer2.salary,trainer2.id);
    end
endmodule



//output
# KERNEL: name=dharani salary=10000 id=5555
# KERNEL: name=gayathri salary=10010 id=5596
