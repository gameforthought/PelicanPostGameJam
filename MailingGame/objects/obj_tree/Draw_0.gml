/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);

draw_primitive_begin_texture(pr_trianglestrip, tex);
draw_vertex_texture(x + initial_width, y, 1, 1);
draw_vertex_texture(x - initial_width, y, 0, 1);
draw_vertex_texture(x + (2 * (initial_width / 3)) + A_join, y - branchA_height, 1, 0);
draw_vertex_texture(x - (2 * (initial_width / 3)) + A_join, y - branchA_height, 0, 0);
draw_primitive_end();

for (var i = 0; i < branching_array[0]; i += 1) {
draw_primitive_begin_texture(pr_trianglestrip, tex);
draw_vertex_texture(x + (2 * (initial_width / 3)) + A_join, y - branchA_height, 1, 1);
draw_vertex_texture(x - (2 * (initial_width / 3)) + A_join, y - branchA_height, 0, 1);
draw_vertex_texture(x + 1 + (sign(branching_array[i + 1]) * (initial_width / 3)) + B_join + ((branching_array[0] - 1) * lerp(-20, 20, i)), y - branchA_height - branchB_height, 1, 0);
draw_vertex_texture(x - 1 - (sign(branching_array[i + 1]) * (initial_width / 3)) + B_join  + ((branching_array[0] - 1) * lerp(-20, 20, i)), y - branchA_height - branchB_height, 0, 0);
draw_primitive_end();
}


for (var i = 0; i < branching_array[1]; i += 1) {
	draw_primitive_begin_texture(pr_trianglestrip, tex);
	draw_vertex_texture(x + 1 + ((initial_width / 3)) + B_join + ((branching_array[0] - 1) * -20), y - branchA_height - branchB_height, 1, 1);
	draw_vertex_texture(x - 1 - ((initial_width / 3)) + B_join  + ((branching_array[0] - 1) * -20), y - branchA_height - branchB_height, 0, 1);
	draw_vertex_texture(x + 1 + (-1 * abs(C_join)) + ((branching_array[2] - 1) *  lerp(-20, -40, i - 1)), y - branchA_height - branchB_height - branchC_height, 1, 0);
	draw_vertex_texture(x - 1 + (-1 * abs(C_join))  + ((branching_array[2] - 1) * lerp(-20, -40, i - 1)), y - branchA_height - branchB_height - branchC_height, 0, 0);
	draw_primitive_end();
}


if branching_array[0] = 2 {
	for (var i = 0; i < branching_array[2]; i += 1) {
		draw_primitive_begin_texture(pr_trianglestrip, tex);
		draw_vertex_texture(x + 1 + ((initial_width / 3)) + B_join + ((branching_array[0] - 1) * 20), y - branchA_height - branchB_height, 1, 1);
		draw_vertex_texture(x - 1 - ((initial_width / 3)) + B_join  + ((branching_array[0] - 1) * 20), y - branchA_height - branchB_height, 0, 1);
		draw_vertex_texture(x + 1 + abs(C_join) + ((branching_array[1] - 1) * lerp(50, 80, i - 1)), y - branchA_height - branchB_height - branchC_height, 1, 0);
		draw_vertex_texture(x - 1 + abs(C_join)  + ((branching_array[1] - 1) * lerp(50, 80, i - 1)), y - branchA_height - branchB_height - branchC_height, 0, 0);
	draw_primitive_end();
}
}