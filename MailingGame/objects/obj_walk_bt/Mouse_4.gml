/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_playerChar) {} else if obj_truck.hspd = 0 {
	instance_create_layer(obj_truck.x - obj_truck.image_xscale * 8, obj_truck.y - 16, "Player", obj_playerChar);
}


instance_destroy(obj_posUI_container.id);
