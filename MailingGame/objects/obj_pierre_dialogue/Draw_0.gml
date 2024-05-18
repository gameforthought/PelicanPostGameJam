/// @description Insert description here
// You can write your code in this editor
if indicator = true && !instance_exists(obj_textbox) && story != -1 {
	
	var _door_shine = surface_create(room_width, room_height);
surface_set_target(_door_shine);

var _x = obj_pierre.x - 24
var _y = 256 - 32 - 67;

draw_clear_alpha(c_white, 0);

draw_sprite_ext(spr_pierre, 0, obj_pierre.x, 256 - 32, 1, obj_pierre.y_scale, 0, c_white, 1);

var _emoter = obj_pierre.emotion_drawer;

if _emoter.blink = 0 {
	draw_sprite_ext(_emoter.sprite, _emoter.eyes, _emoter.x, 256 - 32 + _emoter.eye_y, _emoter.dir, obj_pierre.y_scale, 0, c_white, 1);
} else {
	draw_sprite_ext(_emoter.sprite, 3, _emoter.x, 256 - 32 + _emoter.eye_y, _emoter.dir, obj_pierre.y_scale, 0, c_white, 1);
}

gpu_set_colorwriteenable(1, 1, 1, 0);

var _shine_pos = lerp(100, -80, shine_step / 100);

draw_set_color(c_white);





draw_line_width(-10 + _x, -10 + _shine_pos + _y, 78 + _x, 78 + _shine_pos + _y, 20);
draw_line_width(-10 + _x, -10 + 20 + _shine_pos + _y, 78 + _x, 78 + 20 + _shine_pos + _y, 5);

gpu_set_colorwriteenable(1, 1, 1, 1);


surface_reset_target();

//draw_set_alpha(0.7);
draw_surface(_door_shine, 0, 0);
//draw_set_alpha(1);

surface_free(_door_shine);
	
	
	
draw_sprite(spr_click_prox, 0, x - 30, y - bounce + 12);
}