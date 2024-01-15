/// @description Insert description here
// You can write your code in this editor

random_set_seed(irandom(100));

tex = sprite_get_texture(spr_treeTex, 0);

initial_width = random_range(10, 25);

height = random_range(100, 300);

branchA_height = random_range(1, 2) * (height / 3);
branchB_height = random_range(1, 2) * (height / 3);
branchC_height = random_range(1, 2) * (height / 3);

A_join = random_range(-10, 10);
B_join = random_range(-10, 10);
C_join = random_range(-10, 10);

branching_array = [];

array_push(branching_array, 2);
array_push(branching_array, irandom_range(0,1));
array_push(branching_array, irandom_range(0,1));

if (branching_array[0] != 2) && (branching_array[1] != 2) {
	branching_array[irandom_range(0,1)] = 2;
}

show_debug_message(string(branching_array))









