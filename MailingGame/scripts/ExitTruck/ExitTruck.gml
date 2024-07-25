// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ExitTruck()
{
	with (obj_truck)
	{
		var _struct =
		{
			start_orient: image_xscale,	
			pepper_state: PlayerState.FreeMove
		}
		var pepper = obj_player_manager.character_create(x - image_xscale * 8, y - 16, "Player", obj_playerChar, _struct);
	
		obj_camera_manager.target_character = pepper.id;
		truck_state = PlayerState.NoMove();
	}
	
	//var _struct = {
	//	start_orient: obj_truck.image_xscale,	
	//	pepper_state: PlayerState.FreeMove
	//}
	//instance_create_layer(obj_truck.x - obj_truck.image_xscale * 8, obj_truck.y - 16, "Player", obj_playerChar, _struct);

}