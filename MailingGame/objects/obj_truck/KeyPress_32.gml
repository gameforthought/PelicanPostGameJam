/// @description dismount (temp)
// You can write your code in this editor

if instance_exists(obj_playerChar) {} else if hspd = 0 {
	instance_create_layer(x - image_xscale * 8, y - 16, "Player", obj_playerChar);
}