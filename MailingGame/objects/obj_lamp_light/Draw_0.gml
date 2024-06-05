/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_white);
draw_set_color(c_white);
draw_set_alpha(strength)
draw_circle(x, y, 30 + 2 * sin(grow * 0.02), false);

for (var i = 0; i < 4; i++) {
	var rad = (pi / 4) + (pi / 2) * i - (pi/6);
	var angle = (-45 - 90 - 90 * i) + 30;
	
	var reverse = 1;
	if i = 1 || i = 3 {
		reverse = -1;
	}
	
	draw_sprite_ext(spr_light_mote, 0, 
	x + (32 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * cos(rad),
	y + (32 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * sin(rad),
	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03),
	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03), 
	angle, c_white, strength);
	
}

draw_set_alpha(1);