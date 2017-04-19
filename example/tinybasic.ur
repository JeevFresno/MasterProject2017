
fun main () = return <xml><body>
      <active code={ck <- Tinymce.editor {Width = Tinymce.DefaultSize,
                                           Height = Tinymce.DefaultSize,
                                           InitialText = ""};
                    return (Tinymce.show ck)}/>
    </body></xml>

