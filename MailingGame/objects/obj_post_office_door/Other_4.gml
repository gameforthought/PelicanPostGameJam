/// @description Insert description here
// You can write your code in this editor
var _transition = {}
  
if (open = true)
{
	//if !instance_exists(obj_studio_logo)
	//{
	//	obj_playerChar.x = x;
	//}
	
	// This door now creates the player object when entering the post office;
	// plan to have dedicated character spawners (or use the doors as spawners)
	if (room = post_office) obj_player_manager.character_create(x, 224, "Player", obj_playerChar);
	
	_transition = { player: true }
}
 
open = false;

instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);
