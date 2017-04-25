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
    
    console.log("v="+v);
    console.log("v.n"+v.v);
    return v.v;
}

function uw_tinymce_init(r) {
    
    var config = {};

    var width = sizeOut(r._Width);
    if(width != null)
	config.width = width;

    var height = sizeOut(r._Height);
    if(height != null)
	config.height = height;

    //setting the selector
    //config.selector = r._Id;

    //the init function of the tinymce editor
    //console.log("ID="+r._Id);
    configT={};
    var editorInstance = '#'+r._Selector;
    var theme = r._Inline;
    config.inline=theme;
    configT.selector=editorInstance;
    configT.plugins="image,link";
    console.log('Editor Instance = '+editorInstance);
    configT.inline=whichTheme(r._Inline);

    console.log(configT);

    //Initializing the tinymce editor
    tinymce.init(configT);

    //var src = r._Source;
    //ed.setData(sg(src));
    //ed.on('change', function(e) { sv(src, ed.getData()); });
}

function uw_tinymce_setContent(id, s) {
    //var ed = tinymce.instances[id];
    //if (ed) ed.setData(s);
}