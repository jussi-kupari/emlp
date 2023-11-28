(* Exercises for section 2.3 *)
(* Exercise 2.3.1
 * Tell whether each of the following character strings is
 * i)   an alphanumeric identifier suitable for ordinary (nontype values),
 * ii)  a symbolic identifier,
 * iii) an identifier that must represent a type as value, or
 * iv)  not an identifier of ML *)

(* a) The7Dwarves *)
(* alphanumeric identifier *)

(* b) 7Dwarves *)
(* not an identifier in ML *)

(* c) SevenDwarves,The *)
(* not and identifier in ML *)

(* d) 'SnowWhite' *)
(* type value identifier *)

(* e) a>=b *)
(* not an identifier in ML *)

(* f) hurrah! *)
(* not an identifier in ML *)

(* g) #1 *)
(* not an identifier in ML *)

(* h) '123 *)
(* type value identifier *)


(* Exercise 2.3.2
 * Show the effect on the environment of making the following sequence
 * of val-declarations. Which variables are now accessible? *)
val a = 3;
val b = 98.6;
val a = "three";
val c = a ^ str(chr(floor(b)));

(* a = "three; b = 98.6; c = "threeb"
 * a = 3; is no longer accessible *)
