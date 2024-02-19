
// You can write your code in this editor
// gets direction of player and inverts it

decay = random_range(0.6, 1);

if instance_exists(obj_playerChar) {
	dir = -1 * obj_playerChar.image_xscale;
	scale = random_range(0.4, 0.8);
	
	if obj_playerChar.jump = true {
		decay = 0.3;
		if x > obj_playerChar.x {
			dir = 1;	
		} else {
			dir = -1;
		}
	}
} else {
	dir = -1 * obj_truck.image_xscale;
	scale = random_range(0.5, 1.5);
}

dark = make_color_rgb(217, 196, 152);

color = merge_color(c_white, dark, random_range(0.2, 0.7));

up = random_range(0, 1);

