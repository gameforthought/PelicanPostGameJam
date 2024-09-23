/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(button_array); i++) {

var _x = 480 - 30 - i * 42;
var _y = 256 - 6  + shift;

draw_sprite_ext(spr_hud_black, 0, _x * windowScale, (_y + 6) * windowScale,
windowScale, windowScale, 0, c_white, 1);

draw_sprite_ext(spr_hud_button, 1, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, button_array[i].color, 1);

draw_sprite_ext(spr_hud_button, 0, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, c_white, 1);

draw_sprite_ext(spr_hud_button, button_array[i].icon, _x * windowScale, _y * windowScale,
windowScale, windowScale, button_array[i].rot, c_white, 1);


if button_array[i].icon = 3 {
	var _tasks = array_length(obj_objective_manager.array)
	if _tasks > 0 {
		draw_sprite_ext(spr_task_number, 0, (_x - 13) * windowScale,
		(_y - 23) * windowScale, windowScale, windowScale, 0, c_white, 1);
		
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_set_font(ft_gui);
		draw_text((_x - 12) * windowScale,
		(_y - 31) * windowScale, string(_tasks));
		
	}
}

}