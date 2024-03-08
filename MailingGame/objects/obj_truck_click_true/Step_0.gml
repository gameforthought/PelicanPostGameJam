/// @description Insert description here
// You can write your code in this editor

if obj_truck.clickable = true && !instance_exists(obj_posUI_container) && global.pause = 0 {
	visible = true;
} else {
	visible = false;	
}

if obj_truck.image_xscale = -1 {
	x = obj_truck.x + 12;
} else {
	x = obj_truck.x - 18;
}
y = obj_truck.y - 110 - bounce;

bounce = 2 * sin(step);

step += 0.1;
