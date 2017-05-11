open Bootstrap3

style codeColor

val rev = fn [a] =>
             let
                 fun rev' acc (ls : list a) =
                     case ls of
                         [] => acc
                       | x :: ls => rev' (x :: acc) ls
             in
                 rev' []
             end





fun completeCustom() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
  <hr></hr>
	<p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
</div>
<div class="container_fluid" style="padding-left:40px; padding-right:40px">
  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
					  Height = Tinymce.Pixels 150,
					 Inline = Tinymce.Inline False,
					  ToolbarSet = let
					      val toolbar1 = Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
					      val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
					      val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
					      val toolbar4 = Tinymce.Collection(Tinymce.Media :: Tinymce.Table :: Tinymce.InlineFn{FnName = Some "mybutton", Text =Some "Custom Built Buttons"} :: Tinymce.InlineFn{FnName = Some "mybutton2", Text =Some "User Can define N Custom Buttons"} :: [])
					      val menubar1 = Tinymce.Collection(Tinymce.Menubar{Menuname = Some "menubar1", Title = Some "Custom Build", Buttons = (Tinymce.Link :: Tinymce.Unlink :: Tinymce.Anchor :: [])} :: [])
					      val menubar2 = Tinymce.Collection(Tinymce.Menubar{Menuname = Some 'menubar2', Title = Some "Custom Build2", Buttons = (Tinymce.Undo :: [])} :: [])
					      val menubar3 = Tinymce.Collection(Tinymce.Menubar{Menuname = Some "menubar3", Title = Some "Custom build3", Buttons = (Tinymce.Undo :: Tinymce.Redo :: [])} :: [])
																		       in
					       Tinymce.Verticallist( toolbar1 :: toolbar2 :: toolbar3 :: toolbar4 :: menubar1 :: menubar2 :: menubar3 :: [])
					        end,
					        InitialText = "This is the basic exmaple of TinyMCE"};
		  return (Tinymce.show ck)}/>
			<pre>Configuration:
				<p class={codeColor}>
				val menubar1 = Tinymce.Collection(Tinymce.Menubar Menuname = Some "menubar1", Title = Some "Custom Build", Buttons = (Tinymce.Link :: Tinymce.Unlink ::<br></br>
Tinymce.Anchor :: [])  :: [])
				val menubar2 = Tinymce.Collection(Tinymce.Menubar Menuname = Some 'menubar2', Title = Some "Custom Build2", Buttons = (Tinymce.Undo :: []) :: [])
				val menubar3 = Tinymce.Collection(Tinymce.Menubar Menuname = Some "menubar3", Title = Some "Custom build3", Buttons = (Tinymce.Undo :: Tinymce.Redo :: []) :: [])

				</p>
			</pre>
			<p style = "text-align: right"><a href="https://github.com/JeevFresno/MasterProject2017">Check out on Github</a></p>
			</div>
</body></xml>



fun customButton() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 150,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = let
						 	val toolbar1 = Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
							val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
							val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
							val toolbar4 = Tinymce.Collection(Tinymce.Media :: Tinymce.Table :: Tinymce.InlineFn{FnName = Some "mybutton", Text =Some "Custom Built Buttons"} :: Tinymce.InlineFn{FnName = Some "mybutton2", Text =Some "User Can define N Custom Buttons"} :: [])
							in
						 Tinymce.Verticallist( toolbar1 :: toolbar2 :: toolbar3 :: toolbar4 :: [])
						 end,
					       InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
					<p class={codeColor}>
					Tinymce.editor  Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 150,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = let
						 	val toolbar1 = Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
							val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
							val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
							val toolbar4 = Tinymce.Collection(Tinymce.Media :: Tinymce.Table :: Tinymce.InlineFn FnName = Some "mybutton", Text =Some "Custom Built Buttons" :: <br></br>Tinymce.InlineFnFnName = Some "mybutton2", Text =Some "User Can define N Custom Buttons" :: [])
							in
						 Tinymce.Verticallist( toolbar1 :: toolbar2 :: toolbar3 :: toolbar4 :: [])
						 end,
					       InitialText = ""
					</p>
				</pre>
				<p style = "text-align: right"><a link={completeCustom() }>Next: User Customized from Menu Bar to Tool bar</a></p>
				</div>
</body></xml>

fun toolbarRev() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 150,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = let
						 	val toolbar1 = Tinymce.Collection(rev(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[]))
							val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
							val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
							in
						 Tinymce.Verticallist( rev(toolbar1 :: toolbar2 :: toolbar3 :: []))
						 end,
					       InitialText = "This is the basic example of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
					<p class={codeColor}>
					val rev = fn [a] =>
					             let
					                 fun rev' acc (ls : list a) =
					                     case ls of
					                         [] => acc
					                       | x :: ls => rev' (x :: acc) ls
					             in
					                 rev' []
					             end
					</p>
				</pre>
				<p style = "text-align: right"><a link={customButton() }>Next: Custom Buttons/Userdefined Buttons</a></p>
				</div>
</body></xml>

fun withMultipleBar() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 150,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = let
						 	val toolbar1 = Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
							val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
							val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
							in
						 Tinymce.Verticallist( toolbar1 :: toolbar2 :: toolbar3 :: [])
						 end,
					       InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
							<p class={codeColor}>Tinymce.editor  Width = Tinymce.Percent 100,
					 																	 Height = Tinymce.Pixels 250,
								 													   Inline = Tinymce.Inline False,
																						 ToolbarSet = let
																						 val toolbar1 = Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
																							val toolbar2 = Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: Tinymce.Styleselect :: [])
																							val toolbar3 = Tinymce.Collection(Tinymce.Code :: Tinymce.Codesample :: Tinymce.Bbcode :: Tinymce.Separator :: Tinymce.Image :: Tinymce.Emoticons :: [])
																							in
																						 Tinymce.Verticallist( toolbar1 :: toolbar2 :: toolbar3 :: [])
								 													   InitialText = "";</p></pre>
				<p style = "text-align: right"><a link={toolbarRev() }>Next: Reversing the Toolbar(Metaprogramming Example)</a></p>
</div>
</body></xml>

fun withTwoToolbar() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
						 																		::
						 																		Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: []):: []),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
							<p class={codeColor}>Tinymce.editor  Width = Tinymce.Percent 100,
					 																	 Height = Tinymce.Pixels 250,
								 													   Inline = Tinymce.Inline False,
																						 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste
																						 																		:: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])
																																								::
																																								Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify
																																								:: Tinymce.Aligncenter :: []):: []),
								 													   InitialText = "";</p></pre>
				<p style = "text-align: right"><a link={withMultipleBar() }>Next: Multiple Toolbar</a></p>
				</div>
</body></xml>


fun withSeparator() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 		 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])::[]),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
							<p class={codeColor}>Tinymce.editor  Width = Tinymce.Percent 100,
					 																	 Height = Tinymce.Pixels 250,
								 													   Inline = Tinymce.Inline False,
																						 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator
																						 																		:: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])::[]),
								 													   InitialText = "";</p></pre>
				<p style = "text-align: right"><a link={withTwoToolbar() }>Next: Couple of Toolbar</a></p>
				</div>
</body></xml>

fun withOneBar() = return <xml>
<head>
	 <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
</head>
<body>
<div class = "container_fluid">
<h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
 <p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				<p style = "text-align: center; font-size:20px; text-decoration: underline;">Tinymce Editor With User Customized Toolbar</p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 		 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: [])::[]),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/>
				<pre>Configuration:
							<p class={codeColor}>Tinymce.editor  Width = Tinymce.Percent 100,
					 																	 Height = Tinymce.Pixels 250,
								 													   Inline = Tinymce.Inline False,
																						 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: [])::[]),
								 													   InitialText = "";</p></pre>
				<p style = "text-align: right"><a link={withSeparator ()}>Next: Toolbar with a Separator</a></p>
</div>
</body></xml>



fun main () = return <xml>
  <head>
     <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
  </head>
  <body>
<div class = "container_fluid">
 <h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
	<p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">

			<p style = "text-align: center; font-size:20px; text-decoration: underline;">Tinymce Editor with Default Configuration.</p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 220,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = Tinymce.DefaultToolbarSet,
					         InitialText = "Hello World, This is TinyMCE Editor."};
				return (Tinymce.show ck)}/>

	<pre>Configuration:
				<p class={codeColor}>Tinymce.editor  Width = Tinymce.Percent 100,
		 																	 Height = Tinymce.Pixels 250,
					 													   Inline = Tinymce.Inline False,
		 																 	 ToolbarSet = Tinymce.DefaultToolbarSet,
					 													   InitialText = "";</p></pre>
	<p style = "text-align: right"><a link={withOneBar ()}>Next: With Customized Toolbar</a></p>
	</div>
</body></xml>





(*fun thankYou() = return <xml>
  <head>
     <link rel="stylesheet" type="text/css" href="https://ccrs-demo.herokuapp.com/style.css"/>
  </head>
  <body>
<div class = "container_fluid">
 <h1 style = "text-align: center"> <p> Metaprogramming in a Functional based web-framework</p></h1>
 <hr></hr>
	<p class="lead" style = "text-align: center;font-size:25px">Ur/Web library for TinyMCE Editor.</p>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">

			<p style = "text-align: center; font-size:20px; text-decoration: underline;">Tinymce Editor with Default Configuration.</p>
				<a href="https://github.com/JeevFresno/MasterProject2017" target="blank">Check out the source code on Github</a>
	</div>
</body></xml>*)
