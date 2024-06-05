/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_yellow);
draw_set_alpha(strength * 0.5)
//draw_circle(x, y, 30 + 2 * sin(grow * 0.02), false);

//for (var i = 0; i < 4; i++) {
//	var rad = (pi / 4) + (pi / 2) * i - (pi/6);
//	var angle = (-45 - 90 - 90 * i) + 30;
	
//	var reverse = 1;
//	if i = 1 || i = 3 {
//		reverse = -1;
//	}
	
//	draw_sprite_ext(spr_light_mote, 0, 
//	x + (32 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * cos(rad),
//	y + (32 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * sin(rad),
//	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03),
//	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03), 
//	angle, c_white, strength);
	
//}

if !instance_exists(obj_playerChar) {
	
	var dir = obj_truck.image_xscale;
	var tx = 0;
	var flip = 1;
	
	if dir = 1 {
		tx = obj_truck.x + 85;
		flip = 0;
	} else {
		tx = obj_truck.x - 87;
	}

	
	draw_circle(tx, obj_truck.y - 30, 12 + 1 * sin(grow * 0.02), false);
	
	for (var i = 0; i < 2; i++) {
		var rad = (pi / 4) + (pi / 2) * i * -dir - (pi/6) + (pi * flip);
		var angle = (-45 - 90 - 90 * i * -dir) + 30 + (180 * flip);
	
		var reverse = 1;
		if i = 1 || i = 3 {
			reverse = -1;
		}
	
	draw_sprite_ext(spr_light_mote, 0, 
	tx + (12 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * cos(rad),
	obj_truck.y - 30 + (12 + reverse * 3 * sin((grow + 25 * (i + 1)) * 0.03)) * sin(rad),
	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03),
	0.75 + 0.15 * reverse + reverse * 0.1 * sin((grow + 25 * (i + 1)) * 0.03), 
	angle, c_yellow, strength * 0.5);
	
	}
}

draw_set_alpha(1);