datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

(* Added theme to the TinyMCE Editor*)

datatype theme = 
	 Inline of bool

(* Added Inline Variable *)

val init : {Width : size,
               Height : size,
               Selector : id,
	       Inline: theme,
               Source : source string}
	   -> transaction unit
val setContent : id -> string -> transaction unit