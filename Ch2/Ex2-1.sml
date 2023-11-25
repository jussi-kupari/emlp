(* 2.1.7 Exercises for Section 2.1 *)

(* Exercise 2.1.1
 * What is the response of ML to the following expressions? *)

(* a *) 1+2*3; (* 7 : int *)
(* b *) 5.0 - 4.2 / 1.4; (* 2.0 : real *)
(* c *) 11 div 2 mod 3; (* 2 : int *)
(* d *) "foo" ^ "bar" ^ ""; (* "foobar" : string *)
(* e *) 3 > 4 orelse 5 < 6 andalso not (7 <> 8); (* false : bool *)
(* f *) if 6 < 10 then 6.0 else 10.0; (* 6.0 : real *)
(* g *) 0xAB + 123; (* 294 : int *)
(* h *) 0xab < 123; (* false : bool *)

(* Exercise 2.1.2
 * The following ML "expressions" have errors in them.
 * Explain what is wrong with each. *)

(* a *) (* 8 / 4; / is for reals, ints use div *)
(* b *) (* if 2 < 3 then 4; if-then-else is missing the else part *)
(* c *) (* 1 < 2 and  5 > 3; andalso should be used instead of and *)
(* d *) (* 6 + 7 DIV 2; Should be div instead of DIV (case sensitivity) *)
(* e *) (* 4. + 3.5; First number is missing the part after decimal point *)
(* f *) (* 1.0 < 2.0 or 3 > 4; orelse should be used instead of or *)
(* g *) (* #"a" ^ #"b"; These are characters not strings *)
(* h *) (* 123.; This real is missing the part after the decimal point *)
(* i *) (* 1.0 = 2.0; Reals are approx so strict comparison doesn't work *)

(* Exercise 2.1.3 Skip *)

(* Exercise 2.1.4
 * Express as if-then-else expressions: *)

(* a *) (* E orelse F *) (* if E then true else F; *)

(* b *) (* E andalso F *) (* if E then F else false *)
