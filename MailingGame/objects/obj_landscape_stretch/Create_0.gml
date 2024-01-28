/// @description Insert description here
// You can write your code in this editor

width = 5000;
tree_layer = choose(-1, 1);

for (var i = 0; i < width; i += 100) {
	if tree_layer = -1 {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees", obj_treeGen);	
	} else {
		instance_create_layer(i + irandom_range(-20, 20), y, "trees_1", obj_treeGen);
	}
	
	tree_layer *= -1;
}




