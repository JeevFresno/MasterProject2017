open Bootstrap3

fun thankYou() = return <xml><body>
    <div class="container_fluid" style="padding-left:40px; padding-right:40px">
      <p class = "lead">Check out the library and complete source code on Github</p>
    </div>
</body></xml>
					    

fun completeCustom() = return <xml><body>
<div class = "container_fluid">
  <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
  <hr></hr>
  <p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
</div>
<div class="container_fluid" style="padding-left:40px; padding-right:40px">
  <p><a link={thankYou() }>Go Back Home </a></p>
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
		  return (Tinymce.show ck)}/></div>
</body></xml>



fun customButton() = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				  <p><a link={completeCustom() }>Next: User Customized</a></p>
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
				return (Tinymce.show ck)}/></div>
</body></xml>

fun withMultipleBar() = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				<p><a link={customButton() }>Userdefined Buttons/Plugins</a></p>
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
				return (Tinymce.show ck)}/></div>
</body></xml>

fun withTwoToolbar() = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				<p><a link={withMultipleBar() }>Toolbar Multiple Tool Bar (N)</a></p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])::Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: []):: []),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/></div>
</body></xml>


fun withSeparator() = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				<p><a link={withTwoToolbar() }>Toolbar with a Separator</a></p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 		 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline ::[])::[]),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/></div>
</body></xml>

fun withOneBar() = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">
				<p><a link={withSeparator ()}>Toolbar with a Separator</a></p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Percent 100,
					         Inline = Tinymce.Inline False,
						 		 ToolbarSet = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Cut :: Tinymce.Copy :: Tinymce.Paste :: [])::[]),
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/></div>
</body></xml>

fun main () = return <xml><body>
<div class = "container_fluid">
 <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
 <hr></hr>
	<p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	</div>
				<div class="container_fluid" style="padding-left:40px; padding-right:40px">

			<p><a link={withOneBar ()}>With Customized Toolbar</a></p>
				  <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						 Height = Tinymce.Pixels 250,
					         Inline = Tinymce.Inline False,
						 ToolbarSet = Tinymce.DefaultToolbarSet,
					         InitialText = "This is the basic exmaple of TinyMCE"};
				return (Tinymce.show ck)}/></div>
</body></xml>



(*fun default () =
	return <xml><body>
	  <div class = "container_fluid">
	   <h2 style = "text-align: center"> <p class="lead"> Metaprogramming in a Functional based web-framework</p></h2>
	   <hr></hr>
	    <p class="lead" style = "text-align: center">Ur/Web library for TinyMCE Editor.</p><br></br>
	    </div>
            <div class="container_fluid" style="padding-left:40px; padding-right:40px">
						<p>This is the Complete show case of the Framework.</p>
	    <active code = {ck <- Tinymce.editor { Width = Tinymce.Percent 100,
						     Height = Tinymce.Percent 100,
						 Inline = Tinymce.Inline False,
						     ToolbarSet = let
								 	 val toolbar1 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Copy :: Tinymce.Paste :: Tinymce.Separator  :: Tinymce.Bold :: Tinymce.Italic :: Tinymce.Underline :: []) :: [])
								 	 val toolbar2 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Undo :: Tinymce.Redo :: []) :: [])

								         val toolbar3 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Alignleft :: Tinymce.Alignright :: Tinymce.Alignjustify :: Tinymce.Aligncenter :: []) :: [])
									 val toolbar4 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Bullist :: Tinymce.Numlist :: Tinymce.Menubar{Menuname = Some "menubar1", Title = Some "Custom Build", Buttons = (Tinymce.Link :: Tinymce.Unlink :: Tinymce.Anchor :: [])} :: Tinymce.Hr :: Tinymce.Menubar{Menuname = Some 'menubar2', Title = Some "Custom Build2", Buttons = (Tinymce.Undo :: [])} :: []) :: [])
									 val toolbar5 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Table :: Tinymce.Emoticons :: []) :: [])
								         val toolbar7 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Menubar{Menuname = Some "menubar3", Title = Some "Custom build3", Buttons = (Tinymce.Redo :: [])} :: []) :: [])
									 val toolbar6 = Tinymce.Verticallist(Tinymce.Collection(Tinymce.Media :: Tinymce.InlineFn{FnName = Some "mybutton", Text =Some "Custom Button", Fn = Some "alert(hi)"} :: [])::[])
									 val finaltoolbar = toolbar1 :: toolbar2 :: toolbar3 :: toolbar4 :: toolbar5 :: toolbar6 :: toolbar7 :: []
								 	 in
								 					finaltoolbar
									  end,
						     InitialText = "This is trial"};
			      return (Tinymce.show ck)}/></div>
	      </body></xml> *)



(*fun main () = return <xml><body>
      <active code={ck <- Tinymce.editor {Width = Tinymce.DefaultSize,
                                           Height = Tinymce.Percent 50,
                                          Inline = Tinymce.Inline False,
					  ToolbarSet=
					  let
					      val top = Tinymce.Bar{Buttons=(Tinymce.Bold :: Tinymce.Italic :: Tinymce.Separator :: [])}
					      val bottom = Tinymce.Bar{Buttons=(Tinymce.Save :: [])}
				              val menu = Tinymce.Stack{MenuName = Some "newMenuItem",Title = Some "newmenu", Buttons = (Tinymce.Link :: Tinymce.Redo :: [])}
			                  in
					  Tinymce.CustomizeToolbar(top :: bottom :: menu :: Tinymce.ToolbarN :: [])
					  end,
					  InitialText = ""};
                    return (Tinymce.show ck)}/>
    </body></xml> *)
