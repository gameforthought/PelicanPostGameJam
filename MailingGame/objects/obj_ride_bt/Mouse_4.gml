/// @description Insert description here
// You can write your code in this editor

obj_truck.alarm[0] = 20;
obj_truck.dismount_anim = true;
instance_destroy(obj_playerChar.id);


if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
