/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(lerp(0.4, 0, shift / 256));
draw_rectangle(0, 0, windowScale * 550, windowScale * 256, false);
draw_set_alpha(1);

//draw_rectangle((344 + shift) * windowScale, 0, (550 + shift)  * windowScale, 300  * windowScale, false);



draw_sprite_ext(spr_p_objective_bg, 0, (9) * windowScale, (256 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);

for (var i = 0; i < array_length(obj_objective_manager.array); i++) {
	
	draw_sprite_ext(spr_objective_frame, 0, (9) * windowScale, ((256 - 160) + (i * 24) + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	
	
	var _label = scribble(obj_objective_manager.array[i].text);
		_label.starting_format("ft_gui", c_black);
		_label.wrap(300 * windowScale);
		
		_label.draw((9 + 46) * windowScale, ((256 - 160 + 4) + (i * 24) + shift) * windowScale);
	
	
}

//bg
draw_sprite_ext(spr_obj_info, 0, (9) * windowScale, (256 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);

if desc_text != "" {

	draw_sprite_ext(spr_obj_info, 1, (9) * windowScale, (256 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	
	var _desc = scribble(desc_text);
		_desc.starting_format("ft_gui", c_black);
		_desc.wrap(120 * windowScale);
		
		_desc.draw(305 * windowScale, (95 + shift) * windowScale);
	
}


//close button
draw_sprite_ext(spr_close_bt, 0, (close_x) * windowScale, (close_y + shift) * windowScale, windowScale, windowScale, close_rot, c_white, 1);



//black bars
draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, -30 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1);
draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, 256 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1)

