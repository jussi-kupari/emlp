(* Exercises for Section 2.4 *)

(* Exercise 2.4.1
 * What are the values of the following expressions? *)

(* a) #2(3,4,5) *)
val it = 4 : int

(* b) hd [3,4,5] *)
val it = 3 : int

(* c) tl [3,4,5] *)
val it = [4,5] : int list

(* d) explode "foo" *)
val it = [#"f",#"o",#"o"] : char list

(* e) implode [#"f", #"o", #"o"] *)
val it = "foo" : string

(* f) "c" :: ["a","t"] *)
val it = ["c","a","t"] : string list

(* g) ["c", "o"] @ ["b","o","l"] *)
val it = ["c","o","b","o","l"] : string list

(* h) concat ["c","a","t"] *)
val it = "cat" : string


(* Exercise 2.4.2
 * What is wrong with each of the following expressions?
 * If possible, suggest an appropriate correction. *)

(* a) #4(3,4,5) *)
(* There are only three elements in this tuple, not four
 * If we want the last element, we can use #3(3,4,5) *)

(* b) hd [] *)
(* This tries to get the head of an empty list
 * No real solution here *)

(* c) #1(1) *)
(* This appears to try extracting the first value from a single integer?
 * Don't know of a solution *)

(* d) explode ["bar"] *)
(* This attempts to explode a list of one string
 * explode "bar" works *)

(* e) implode (#"a",#"b") *)
(* This attemps to implode a tuple of chars
 * implode [#"a",#"b"] works *)

(* f) ["r"] :: ["a","t"] *)
(* This attempts to cons a list to a list
 * "r" :: ["a","t"] works *)

(* g) tl [] *)
(* This attempts to extract the tail of an empty list
 * Can't think of a solution here *)

(* h) 1 @ 2 *)
(* This attempts to append two integers together
 * [1] @ [2] works *)

 (* i) concat [#"a",#"b"]
  * This attempts to concatenate a list of chars
  * concat ["a","b"] works (list of strings) *)

(* Exercise 2.4.3
 * Give the types of the following expressions. *)

(* a) (1.5,("3",[4,5])) *)
(*     real * (string * (int list))    *)

(* b) [[1,2],nil,[3]] *)
(*    int list list                    *)

(* c) [(2,3.5),(4,5.5),(6,7.5)] *)
(*    (int * real) list                *)

(* d) ([#"a",#"b"],[nil,[1,2,3]]) *)
(*    char list * int list list        *)

(* Exercise 2.4.4
 * 1. Are (1,2) and (1,2,3) the same type?
 * 2. Are [1,2] and [1,2,3] the same type?*)

(* 1. No. Tuples have product-types, here: (int * int) and (int * int * int) *)
(* 2. Yes. Lists have list-type, here: int list *)

(* Exercise 2.4.5
 * Give examples of appropriate values for each of the following type
 * expressions. Do not use empty list as the value for any list component. *)

(* a) int list list list *)
(* [[[1],[2,3]],[[4,5],[6,7,8]]]       *)

(* b) (int * char) list *)
(* [(1,#"a"),(2,#"b")]  *)

(* c) string list * (int * (real * string)) * int    *)
(* (["a","b","c"],(3,(1.0,"d")),5)    *)

(* d) ((int * int) * (bool list) * real) * (real * string)    *)
(* (((1,2),[true,false],1.0),(2.0,"ab"))      *)

(* e) (bool * int) * char *)
(* ((true,1),#"a")                            *)

(* f) real * int * list * list * list * list  *)
(* (1.0,[[[[2]]]])                            *)

(* Exercise 2.4.6
 * Using two of the operators we have learned in this section,
 * it is possible to convert a string of length one into the character
 * of that string. Show how to accomplish this transformation. *)

val a = hd (explode "a");
(* val a = #"a" : char *)


























