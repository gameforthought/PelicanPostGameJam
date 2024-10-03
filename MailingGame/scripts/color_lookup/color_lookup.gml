// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function color_lookup(_string){

	var _color = c_black;
	_string = string_lower(_string)
	
	switch _string {
		
	case "beatrice":
		_color = #5a4a42;
	break;
	case "suzannah":
		_color = #ca4d35;
	break;
	case "pepper":
		_color = #5a7fc8;
	break;
	case "pierre":
		_color = #f5735b;
	break;
	case "clyde":
		_color = #4ab96e;
	break;
	default:
		_color = c_black;
	break;
};

return _color;

}