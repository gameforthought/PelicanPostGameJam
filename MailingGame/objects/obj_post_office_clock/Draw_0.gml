/// @description Insert description here
// You can write your code in this editor
var sep = (2 * pi) / (sunset_start + 2);

draw_set_color(#5f5249);

for (var i = 1; i < sunset_start + 2; i += 1) {
	draw_circle(x + (14 * cos(i * sep - (pi / 2))), y + (14 * sin(i * sep - (pi / 2))), 3, false);
}

draw_sprite_ext(spr_clock_hand, 1, x, y, 1, 1, (360 / (sunset_start + 2)) * -1 *(obj_time_tracker.day_progress + 1), c_white, 1);