/// @description Insert description here
// You can write your code in this editor

var _color = merge_color(c_black, #766659, (clamp(completeness, 40, 80) / 40) - 1);


draw_sprite_ext(spr_objective_modal, 0, (x_pos + tbox_dir + (width / 2)) * windowScale, (y_pos + 21 - 9) * windowScale,
windowScale * x_flip, windowScale * y_flip, 0, c_white, 1);

draw_sprite_ext(spr_objective_frame, 0, (x_pos + tbox_dir - 12) * windowScale, y_pos * windowScale, windowScale, windowScale, 0, c_white, 1);
	
	
	var _label = scribble(text);
		_label.starting_format("ft_gui", _color);
		
		_label.draw((x_pos + tbox_dir + 46 - 12) * windowScale, (y_pos + 4) * windowScale);
		
		
if completeness >= 10 {
	
	draw_sprite_part_ext(spr_objective_frame, 1, 0, 0, completeness, 48,
	(x_pos + tbox_dir - 12) * windowScale, y_pos * windowScale, 
	windowScale, windowScale, c_white, 1);
	
}

if complete = false {
	draw_sprite_ext(spr_objective_new, 0, (x_pos + tbox_dir - 15) * windowScale, (y_pos + 21 - 9) * windowScale,
	windowScale, windowScale, 0, c_white, 1);
}