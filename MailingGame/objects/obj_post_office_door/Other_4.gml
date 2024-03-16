/// @description Insert description here
// You can write your code in this editor
  var _transition = {}
  
 if open = true {
	 obj_playerChar.x = x;
  _transition = {
	player: true,	 
 }
 }
 
 open = false;

 instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);
