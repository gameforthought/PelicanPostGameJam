tree_height = irandom_range(5, 8);

tree_struct_array = [];


tree_direction_start = choose(-1, 1);
tree_direction = tree_direction_start;

for (var i = 0; i < tree_height; i += 1) {
	var _tree_struct = {
		subimage: irandom_range(0, 0),
	}
	if irandom_range(0, 10) = 0 {
		_tree_struct.dir = -1;	
		_tree_struct.change = true;	
	} else {
		_tree_struct.dir = 1;
		_tree_struct.change = false;
	}
	
	
	
	array_push(tree_struct_array, _tree_struct);
}

