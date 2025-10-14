class sample;
  //rand bit a;
  rand bit[7:0]a,b;
  constraint c1{
    if(a==1) 
      b==25;
    else
      b==15;
  }
endclass
module tb;
  sample s=new();
  initial
    begin
      assert(s.randomize()with{a==1;});
      $display("a=%0d b=%0d",s.a,s.b);
    end
endmodule
//output
# KERNEL: a=1 b=25
