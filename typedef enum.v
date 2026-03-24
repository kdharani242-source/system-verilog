// Code your testbench here
// or browse Examples
module tb;
  typedef enum {blue=5,green,red,pink=10,orange} color;
  initial
    begin
      color clr;
      clr=clr.first();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.next();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.next(2);
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.last();
      $display("clr=%0d clr_name=%0s",clr,clr.name);
      clr=clr.prev(2);
      $display("clr=%0d clr_name=%0s",clr,clr.name);
    end
endmodule
