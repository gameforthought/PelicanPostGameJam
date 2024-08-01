/// @description Insert description here
// You can write your code in this editor

width = 16 * image_xscale;

sprites = [];

for (var i = x; i < x + width; i += 100) {
	
	var struct = {
		x_pos: i + irandom_range(-90, 90),
		dir: choose(-1, 1),
		subimage: irandom(3),
	};
	
	array_push(sprites, struct);
	
	
}