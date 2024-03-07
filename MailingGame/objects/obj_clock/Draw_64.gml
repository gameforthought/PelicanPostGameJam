/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_clock, 0, 0, y * windowScale, windowScale, windowScale, 0, c_white, 1);

var sep = (pi + (pi / 18)) / (sunset_start + 1);
var circle_x = 41 * windowScale;
var circle_y = (y - 60) * windowScale;

draw_set_color(#e8d7b4);
for (var i = 1; i < sunset_start + 1; i += 1) {
	draw_circle(circle_x + (cos((-i * sep) + (pi / 36)) * 26) * windowScale, circle_y + (sin((-i * sep) + (pi / 36)) * 26) * windowScale, 3.5 * windowScale, false);
}

draw_sprite_ext(spr_clock_hand, 0, circle_x, circle_y + (2 * windowScale), windowScale, windowScale, 95 - ((190 / (sunset_start + 1)) * obj_timeTracker.day_progress), c_white, 1);

draw_sprite_ext(spr_clock, 1, 0, y * windowScale, windowScale, windowScale, 0, c_white, 1);

draw_set_font(ft_gui);

draw_set_color(#ca4d35);
draw_text(61 * windowScale, (y - 24) * windowScale, week);

draw_set_color(#5a7fc8);
draw_text(61 * windowScale, (y - 46) * windowScale, day);