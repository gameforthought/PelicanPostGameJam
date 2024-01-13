
// You can write your code in this editor
// gets direction of player and inverts it
if instance_exists(obj_playerChar) {
	dir = -1 * obj_playerChar.image_xscale;
	scale = random_range(0.4, 0.8);
} else {
	dir = -1 * obj_truck.image_xscale;
	scale = random_range(0.5, 1.3);
}

color = merge_color(c_white, c_gray, random_range(0, 0.5));

decay = irandom_range(0.1, 1);