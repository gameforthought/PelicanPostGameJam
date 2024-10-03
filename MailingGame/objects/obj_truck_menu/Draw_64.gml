/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);


//draw bg
draw_set_color(c_black);

draw_triangle((x - 4 - vx) * windowScale, (y - vy) * windowScale,
(x - 12 - vx) * windowScale, (y - 11 - vy) * windowScale,
(x + 4 - vx) * windowScale, (y - 11 - vy) * windowScale, false)
draw_roundrect((x - 4 - 15 - vx) * windowScale, (y - 30 - vy) * windowScale, 
(x + ((length - 1) * 33) + 8 - vx) * windowScale, (y - 6 - vy) * windowScale, false);

//draw buttons
for (var i = 0; i < length; i++) {
	var _x = x + (i * 33) - vx;
	var _y = y - 12;
	
	
	draw_sprite_ext(spr_truck_buttons, 1, windowScale * (_x), windowScale * (_y), windowScale, windowScale, button_array[i].rot, button_array[i].color, 1)
	draw_sprite_ext(spr_truck_buttons, button_array[i].icon, windowScale * (_x), windowScale * (_y), windowScale, windowScale, button_array[i].rot, c_white, 1)
	draw_sprite_ext(spr_truck_buttons, 0, windowScale * (_x), windowScale * (_y), windowScale, windowScale, button_array[i].rot, c_white, 1)
	
	
}