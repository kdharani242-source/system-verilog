// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  bit a;
  byte b;
  int i;
  integer n;
  longint l;
  shortint s;
  time t;
  realtime r;
  logic g;
  wire w;
  reg e;
  initial
    begin
      $display("bit      ->bits=%0d,default=%0b",$bits(a),a);
      $display("byte     ->bits=%0d,default=%0b",$bits(b),b);
      $display("int      ->bits=%0d,default=%0b",$bits(i),i);
      $display("integer  ->bits=%0d,default=%0b",$bits(n),n);
      $display("longint  ->bits=%0d,default=%0b",$bits(l),l);
      $display("shortint ->bits=%0d,default=%0b",$bits(s),s);
      $display("time     ->bits=%0d,default=%0b",$bits(t),t);
      $display("realtime ->bits=%0d,default=%0b",$bits(r),r);
      $display("logic    ->bits=%0d,default=%0b",$bits(g),g);
      $display("wire     ->bits=%0d,default=%0b",$bits(w),w);
      $display("reg      ->bits=%0d,default=%0b",$bits(e),e);
    end
endmodule
//output
bit      ->bits=1,default=0
# KERNEL: byte     ->bits=8,default=0
# KERNEL: int      ->bits=32,default=0
# KERNEL: integer  ->bits=32,default=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# KERNEL: longint  ->bits=64,default=0
# KERNEL: shortint ->bits=16,default=0
# KERNEL: time     ->bits=64,default=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# KERNEL: realtime ->bits=64,default=0
# KERNEL: logic    ->bits=1,default=x
# KERNEL: wire     ->bits=1,default=z
# KERNEL: reg      ->bits=1,default=x

