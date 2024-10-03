// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function Load_Save(){


}
function load(){
	/*
	var _file = file_text_open_read("saveData.txt");
		var index = string_split(file_text_readln(_file),",");
		 index = asset_get_index(index[0]);
		show_debug_message(index);
		if(room_exists(index))
		{
			room_goto(index);
			show_debug_message("awdawd");
		}
	if(object_exists(obj_playerChar))
		{
		obj_playerChar.x = file_text_readln(_file);
		}
		else
		{
		file_text_readln(_file);
		}
	
		
			var _truck_line = file_text_readln(_file);
			
			show_debug_message(_truck_line);
			if(instance_exists(obj_truck)){
				if(string_copy(_truck_line,1,1) = "-")
				{
				show_debug_message("erm");
				}
				else
				{
					show_debug_message("huh");
					obj_truck.x = _truck_line;
				}
			}
			
		
	
	
	
	*/
}
function save(){
	/*
	var _file;
	_file = file_text_open_write("saveData.txt");
	file_text_write_string(_file,room_get_name(room));
	file_text_write_string(_file, ",\n");
	if(object_exists(obj_playerChar))
	{
		
			file_text_write_string(_file, obj_playerChar.x);
			file_text_write_string(_file, "\n");
	}
	if(instance_exists(obj_truck))	
	{
	
		file_text_write_string(_file, obj_truck.x);
		file_text_write_string(_file, "\n");
	}
	else
	{
		file_text_write_string(_file, "-");
		file_text_write_string(_file, "\n");
	}
	
	if(object_exists(obj_inventory))
	{
		for(var i = 0; i < array_length(obj_inventory.inventory); i++)
		{
			file_text_write_string(_file, obj_inventory.inventory[i]);
		}
		file_text_write_string(_file, "\n");
	}
	
	
	file_text_close(_file);
	*/
}
