datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

type editor
     
val editor : {Width : size,
	      Height : size,
	      InitialText : string
	     }
	     -> transaction editor

val show : editor -> xbody
val content : editor -> signal string
val setContent : editor -> string -> transaction unit