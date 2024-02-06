/// @description Insert description here
// You can write your code in this editor

if obj_truck.clickable = true && !instance_exists(obj_posUI_container) {
	visible = true;
} else {
	visible = false;	
}

if obj_truck.image_xscale = -1 {
	x = obj_truck.x;
} else {
	x = obj_truck.x - 30;
}
y = obj_truck.y - 140 - bounce;

bounce = 2 * sin(step);

step += 0.1;
