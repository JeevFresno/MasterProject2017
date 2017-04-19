datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

val init : {Width : size,
               Height : size,
               Selector : id,
               Source : source string}
	   -> transaction unit
val setContent : id -> string -> transaction unit