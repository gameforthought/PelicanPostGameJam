/// @description Insert description here
// You can write your code in this editor

width = 16 * image_xscale;

tree_layer = choose(-1, 1);

for (var i = x; i < x + width; i += 100) {
	
	var tree_type = obj_tree_gen;
	
	if irandom(7) <= 2 {
		tree_type = obj_pine_gen;
	}
	
	
	if tree_layer = -1 {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees", tree_type);	
	} else {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees_1", tree_type);
	}
	
	tree_layer *= -1;
}


for (var i = x; i < x + width; i += 150) {
	instance_create_layer(i + irandom_range(-30, 30), y - 10, "bushes", obj_bushGen);
	
}



