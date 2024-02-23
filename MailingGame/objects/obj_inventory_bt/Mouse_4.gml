/// @description Insert description here
// You can write your code in this editor

obj_inventory.animation_dir = -1;
global.pause = 1;

if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
instance_destroy();
