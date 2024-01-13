
// You can write your code in this editor
// gets direction of player and inverts it
if instance_exists(obj_playerChar) {
	dir = -1 * obj_playerChar.image_xscale;
	scale = random_range(0.4, 0.8);
} else {
	dir = -1 * obj_truck.image_xscale;
	scale = random_range(0.5, 1.3);
}

light = make_color_rgb(245, 228, 184);
dark = make_color_rgb(217, 196, 152);

color = merge_color(c_white, dark, random_range(0.2, 0.7));

decay = irandom_range(0.1, 1);