
fun main () = return <xml><body>
      <active code={ck <- Tinymce.editor {Width = Tinymce.DefaultSize,
                                           Height = Tinymce.Percent 50,
                                          Inline = Tinymce.Inline True, 
					  InitialText = ""};
                    return (Tinymce.show ck)}/>
    </body></xml>

