/// @description Insert description here
// You can write your code in this editor

wind = 0;
wind_mod = random_range(0.5, 1.2);

subimage = irandom_range(0, 3);

tex_array = [];

for (var i = 0; i < 4; i += 1) {
array_push(tex_array, sprite_get_texture(spr_tree_leaves, i));
}


