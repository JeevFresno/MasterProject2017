
(* size of the editor, size can be default, pixels or percent*)
datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

(*  theme for for the browser, default is Modern *)
datatype theme =
	 Inline of bool


(*  defining editor type *)
type editor
 
(* specifing the confurationn of the editor *)
    
val editor : {Width : size,
	      Height : size,
	      InitialText : string,
	      Inline: theme
	     }
	     -> transaction editor

val show : editor -> xbody
val content : editor -> signal string
val setContent : editor -> string -> transaction unit