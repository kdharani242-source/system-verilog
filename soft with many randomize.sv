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
      assert(s.randomize() with {t==13;});
      $display("t=%0d",s.t);
      assert(s.randomize() with {t==19;});
      $display("t=%0d",s.t);
    end
endmodule
//output
# KERNEL: t=10
# KERNEL: t=11
# KERNEL: t=13
# KERNEL: t=19
