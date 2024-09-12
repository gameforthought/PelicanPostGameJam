function save_game()
{
	var _struct = {
		
		x: obj_playerChar.x,
		y: obj_playerChar.y,
		_room: room_get_name(room)
	}
	
	var _string = json_stringify(_struct);
	var _file = file_text_open_write( "save.txt"); 

	file_text_write_string(_file,_string);
	file_text_close(_file);
	if(instance_exists(obj_inventory)){		
		    var _file_inv = file_text_open_write( "inventory.txt");
	for(var i = 0; i < 23; i++)
	{
		
  
			file_text_write_string(_file_inv, obj_inventory.inventory[i]);
		file_text_write_string(_file_inv,"|");
	}
	
	file_text_close(_file_inv);
	}
	var _file_events = file_text_open_write( "events.txt"); 
	
	for(var j = 0; j < 3; ij++)
	{
		file_text_write_real(_file_events,alarm[j]);
		file_text_write_string(_file_events,"|");
	}
	file_text_close(_file_events);
}
function load_game()
{
	if( file_exists("save.txt"))
	{
		var _file = file_text_open_read("save.txt");
		var _json = file_text_read_string(_file);
		var _struct = json_parse(_json)
		obj_playerChar.x = _struct.x;
		obj_playerChar.y = _struct.y;
		var _room = asset_get_index(_struct._room);
		room_goto(_room);
		file_text_close(_file);
		
	}
	if(instance_exists(obj_inventory)){		
	if( file_exists("inventory.txt"))
	{
		var _file_inv = file_text_open_read("inventory.txt");
		var _inv = file_text_read_string(_file_inv);
		
		var _split = string_split(_inv,"|");
		for(var i = 0; i < 23; i++)
	{
		if(_split[i]!=-1){
			
			var _inv = string_split(_split[i],"\"");
	obj_inventory.inventory[i] = {
		key: _inv[1],
		subimage: 0,
		to: _inv[3],
		from: _inv[5],
		desc: _inv[7]
		}
		
		
	}
	}
};
		 file_text_close(_file_inv);
	}
	
}
