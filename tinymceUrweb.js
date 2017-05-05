function sizeOut(v) {

    if(v == "DefaultSize")
	return null;
    else if (v.n == "Pixels"){
	return (ts(v.v));}
    else if (v.n == "Percent"){
	console.log(ts(v.v));
	return (ts(v.v) + "%");}
    else
	throw ("Invalid Tinymce.size"+v);
}

//Main function, tinymce.init


//function for selecting the theme
function whichTheme(v){

    console.log(v);
    console.log(JSON.stringify(v));
    console.log(v.v);
    return v.v;
}


        var tool =[];
        var menubar = {};
        var menubarStr = " ";
        var set_menu;
 function customizeToolbar(toolbars){
   
     console.log(toolbars);
     createToolbar(toolbars.v);

  }
var buttonsList ="";
  //parsing each toolbar for buttons and menu
  function createToolbar(toolbars){

             var comma =",";
             for(; toolbars != null ; toolbars = toolbars._2){
                 var toolbar = toolbars._1;
                 // alert(toolbar.n);
                 if(toolbar.n == "Collection"){
                     buttonsList ="";
                     var buttons = toolbar.v;  //assigning the list of the buttons
                     for(; buttons != null; buttons = buttons._2 ){
                         var item = buttons._1;
                         if(item instanceof Object){
                            
			     if(item.n == 'Menubar'){
				 set_menu = 1;
				 BuildMenuBar(item);
				 continue;
			     }else{
				 item = AddCustomButton(item);
				 continue;
			     }
                         }
                         if(item == "Separator")
                         {
                             item ="|";
                         }

                         buttonsList +=item.toLowerCase() +" ";
                     }//fetching all the buttons
                     console.log(buttonsList)
                     tool.push(buttonsList);
                 }
             }       //Nested Toolbar buttons
	     
         }   //End of the of the Customize Toolbar function

  function BuildMenuBar(item){
             //   alert(JSON.stringify(item.v));
      var menuName = item.v._Menuname;
      var titleX = item.v._Title;
      var MenuList = "";
      var r = item.v;
      var buttons =r._Buttons
      
      for(; buttons != null; buttons = buttons._2){
      
	  var item = buttons._1;
	  MenuList += item.toLowerCase() + " ";
      }
           
       menubar[menuName] = {items: MenuList, title: titleX};
       menubarStr += menuName +" ";
}

function AddCustomButton(item){
    var name = item.v._FnName;
    buttonsList +=name.toLowerCase() +" ";
    var text = item.v._Text;
    var funBody = item.v._Fn;
    return name;
}

function uw_tinymce_init(r) {

    var configT = {};

    var width = sizeOut(r._Width);   //Width parameter of the Tinymce
    if(width != null)
	configT.width = width;

    var height = sizeOut(r._Height);  //Height paramter ot the Tinymce
    if(height != null)
	configT.height = height;

    var editorInstance = '#'+r._Selector;
    var theme = r._Inline;

    configT.selector=editorInstance;
    // configT.plugins="image,link";
    console.log('Editor Instance = '+editorInstance);
    configT.inline=whichTheme(r._Inline);

    configT.plugins=[
		     "advlist autolink lists link image charmap print preview hr anchor pagebreak",
		     'searchreplace wordcount visualblocks visualchars code fullscreen',
		     'insertdatetime media nonbreaking save table contextmenu directionality',
		     'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc'
		     ];
    var toolbar = r._ToolbarSet;
    //    console.log(toolbar._1); console.log(toolbar._2);
    if(toolbar != null){
	console.log(JSON.stringify(toolbar));
	customizeToolbar(toolbar);
	if(set_menu == 1){
	    configT.menu =menubar;
	    configT.menubar = menubarStr;
	}
	configT.toolbar = tool;
	
    }

    configT.setup = function(editor) {
	editor.addButton('mybutton', {
                text: 'My button2',
                icon: false,
                onclick: function () {
                    editor.insertContent('&nbsp;It\'s my Custom Built Buttons&nbsp;');
                }
            });
	editor.addButton('mybutton2', {
                text: 'My button2',
		    icon: false,
		    onclick: function () {
                    editor.insertContent('&nbsp;User Can define N Custom Buttons!</b>&nbsp;');
                }
            });
    }
    //console.log(toolbar.v);
    console.log(configT);

    //Initializing the tinymce editor
    tinymce.init(configT);

    //var src = r._Source;
    //ed.setData(sg(src));
    //ed.on('change', function(e) { sv(src, ed.getData()); });
}

function uw_tinymce_setContent(str) {
    //var ed = tinymce.instances[id];
    //if (ed) ed.setData(s);
    //  alert(r._InitialText);
    var x = "#"+id;
    alert(str);
    // $(x).val(s);
}

function lets_try(str){
    
    console.log('hi');
    sayHi();
}

function sayHi(){
    alert(hi);
}