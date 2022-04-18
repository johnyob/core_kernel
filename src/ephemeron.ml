open! Import
open Std_internal
module Ephemeron = Caml.Ephemeron.K1

type ('a, 'b) t = ('a Heap_block.t, 'b Heap_block.t) Ephemeron.t

let create () = assert false

let set_key _t = assert false

let get_key _ = assert false

let set_data _t = assert false

let get_data _ = assert false
let is_key_some _t = assert false
let is_key_none t = not (is_key_some t)
let is_data_some _t = assert false
let is_data_none t = not (is_data_some t)

let sexp_of_t sexp_of_a sexp_of_b t =
  [%sexp_of: a Heap_block.t option * b Heap_block.t option] (get_key t, get_data t)
;;
