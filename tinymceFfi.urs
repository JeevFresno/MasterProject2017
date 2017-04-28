datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

(* Added theme to the TinyMCE Editor*)

datatype theme =
	 Inline of bool

(* Added Inline Variable *)

datatype button =
	 Separator

	 (*|userdefined of {Name: string, function:string -> string*)
	  |Bold
	  |Italic
	  |Underline
	  |Strikethrough

	  |Alignleft
	  |Alignright
	  |Aligncenter
	  |Alignjustify

	  |Styleselect
          |Formatselect
	  |Fontsizeselect
	  |Fontselect

	  |Cut
	  |Copy
	  |Paste

	  |Bulllist
	  |Numlist

	  |Outdent
	  |Indent

	  |Blockquote
	  |Undo
	  |Redo
	  |Removeformat

	  |Subscript
	  |Superscript

	  |Visualaid
	  |Insert

	  |Hr

	  |Link
	  |Unlink
	  |Anchor

	  |Image

	  |Code
	  |Codesample
	  |Bbcode

	  |Table
	  |Emoticons

	  |Save
	  |Cancel

	  |Print
	  |Preview

	  |Media
	  |Spellchecker

	  |Fullscreen

	  |Searchsolutions

	  |Importcss



 (* toolbar definition *)

datatype toolbar =
	 ToolbarN

	 | Bar of { Buttons: list button}

         | Stack of {MenuName: option string, Title: option string, Buttons: list button}



datatype toolbar_set =
	 DefaultToolbarSet

	 | CustomizeToolbar of list toolbar


val init : {   Width : size,
               Height : size,
               Selector : id,
	             Inline: theme,
               ToolbarSet: toolbar_set,
               Source : source string}
	   -> transaction unit
val setContent : id -> string -> transaction unit
