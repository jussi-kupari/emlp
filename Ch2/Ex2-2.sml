(* Exercise 2.2.1
 * Write expressions to make each of the following conversions. *)

(* a) Convert 123.45 to the next lower integer *)
floor 123.25;

(* b) Convert -123.45 to the next lower integer *)
floor ~123.45;

(* c) Convert 123.45 to the next higher integer *)
ceil 123.45;

(* d) Convert -123.45 to the next higher integer *)
ceil ~123.45;

(* e) Convert #"Y" to an integer *)
ord #"Y";

(* f) Convert 120 to character *)
chr 120;

(* g) Convert #"N" to real *)
real (ord #"N");

(* h) Convert 97.0 to character *)
chr (trunc 97.0);

(* i) Convert #"Z" to a string *)
str #"Z";


(* Exercise 2.2.2
 * The following expressions contain type errors.
 * What are the errors and how might we fix them? *)

(* a) ceil 4 *)
(* 4 is type int and therefore ceil doesn't work
 * We can coerce it to real and the call ceil *)
ceil (real 4);

(* b) if true then 5 + 6 else 7.0 *)
(* The branches of if-then-else have different types
 * We can coerse one branch to make them similar type *)
if true then real (5 + 6) else 7.0;
(* OR *)
if true then 5 + 6 else trunc 7.0;

(* c) chr 256 *)
(* Integers in the range 0 to 255 can be coerced to character
 * There is no possible solution here without knowing the intent *)

(* d) chr ~1 *)
(* Only integers in the range 0 to 255 can be coerced to character
 * There is no solution without knowing the intent *)

(* e) ord 3 *)
(* ord is used to coerce from character to integer *)
(* We do not know the intent here, but possible solution is to
 * make 3 a character *)
ord #"3";

(* f) chr #"a" *)
(* chr is used to coerce from integer to character *)
(* Intent is unclear again, but we can use ord here *)
ord #"a";

(* g) if 0 then 1 else 2 *)
(* if needs to followed by a boolean
 * Intent in unclear agin. We can replace 0 with false *)
 if false then 1 else 2;

(* h) ord "a" *)
(* ord takes a character as a type
 * We can replace the string with caracter *)
 ord #"a";




















































