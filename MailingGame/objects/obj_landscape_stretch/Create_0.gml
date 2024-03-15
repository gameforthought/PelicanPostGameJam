/// @description Insert description here
// You can write your code in this editor

width = 16 * image_xscale;

tree_layer = choose(-1, 1);

for (var i = x; i < x + width; i += 100) {
	if tree_layer = -1 {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees", obj_treeGen50);	
	} else {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees_1", obj_treeGen50);
	}
	
	tree_layer *= -1;
}


for (var i = x; i < x + width; i += 150) {
	instance_create_layer(i + irandom_range(-30, 30), y - 10, "bushes", obj_bushGen);
	
}



