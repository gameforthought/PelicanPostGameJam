/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

x = vx + (430) + obj_inventory.x;
y = vy + (44) + obj_inventory.y;


if position_meeting(mouse_x, mouse_y, id) {
	hover = -5;
}
else {
	hover = 0;
}



