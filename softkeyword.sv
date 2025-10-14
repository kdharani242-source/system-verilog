/*Soft keyword:
If we want to change value in constraint we use soft keyword it overridden the before constraint value*/
class sample;
  rand bit [7:0] t;
  constraint c1 {soft {t==10};}
endclass
module tb;
  sample s=new();
  initial
    begin
      assert(s.randomize());
      $display("t=%0d",s.t);
      assert(s.randomize() with {t==11;});
      $display("t=%0d",s.t);
    end
endmodule
//output
# KERNEL: t=10
# KERNEL: t=11
