/// @description Insert description here
// You can write your code in this editor
step += 0.5;

scale = ease_in_out_quad(sin(0.1 * pi * step), 0, 1, 1);


if (scale <= 0) && (go = true) {
	instance_destroy();	
}

go = true;


