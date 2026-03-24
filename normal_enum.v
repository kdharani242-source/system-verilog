// Code your testbench here
// or browse Examples
module tb;
  enum {blue=5,green,red,pink=10,orange} clr;
  initial
    begin
      clr=clr.first();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.next();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.next();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.last();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.prev();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
    end
endmodule
//output
# KERNEL: clr=5 clr_name=blue
# KERNEL: clr=6 clr_name=green
# KERNEL: clr=7 clr_name=red
# KERNEL: clr=11 clr_name=orange
# KERNEL: clr=10 clr_name=pink
