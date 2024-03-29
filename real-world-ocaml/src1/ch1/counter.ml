
# require "core"
open Base

type t = (string*int) list

let empty = [] ;;

let to_list x = x;;

let touch t s = 
  let count = 
    match List.Assoc.find t (=) s with
    | None -> 0
    | Some x -> x
  in
  List.Assoc.add t s (count+1)    
;;
(* ocamlfind ocamlc -linkpkg -package base counter.ml -o counter.byte *)