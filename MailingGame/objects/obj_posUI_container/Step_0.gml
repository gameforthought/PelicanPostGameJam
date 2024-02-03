/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_playerChar)) && (obj_playerChar.hspd != 0)  {
	instance_destroy();
}

if (obj_truck.hspd != 0) {
	instance_destroy();
}