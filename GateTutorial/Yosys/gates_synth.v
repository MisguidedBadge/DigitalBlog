/* Generated by Yosys 0.12+38 (git sha1 f599c148c, clang 13.0.0-2 -fPIC -Os) */

(* hdlname = "\\Gates" *)
(* top =  1  *)
(* src = "./Gates.v:6.1-20.10" *)
module Gates(a, b, c, out);
  (* src = "./Gates.v:18.15-18.27" *)
  wire _0_;
  (* src = "./Gates.v:18.32-18.42" *)
  wire _1_;
  (* src = "./Gates.v:18.25-18.27" *)
  wire _2_;
  (* src = "./Gates.v:7.11-7.12" *)
  input a;
  (* src = "./Gates.v:13.6-13.13" *)
  wire and_out;
  (* src = "./Gates.v:8.11-8.12" *)
  input b;
  (* src = "./Gates.v:9.11-9.12" *)
  input c;
  (* src = "./Gates.v:14.6-14.12" *)
  wire or_out;
  (* src = "./Gates.v:10.12-10.15" *)
  output out;
  assign _2_ = ~(* src = "./Gates.v:18.25-18.27" *) c;
  assign and_out = a &(* src = "./Gates.v:16.18-16.23" *)  b;
  assign or_out = a |(* src = "./Gates.v:17.18-17.23" *)  b;
  assign _0_ = and_out &(* src = "./Gates.v:18.15-18.27" *)  _2_;
  assign _1_ = or_out &(* src = "./Gates.v:18.32-18.42" *)  c;
  assign out = _0_ |(* src = "./Gates.v:18.14-18.43" *)  _1_;
endmodule