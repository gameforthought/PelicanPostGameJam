/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglestrip, texture);

draw_vertex_texture(x + 3, y + 63, 0, 0);
draw_vertex_texture(x + 3 + 32, y + 63, 1, 0);

draw_vertex_texture(x + 3 + wind / 3, y + 63 + 39 / 2, 0, 0.5);
draw_vertex_texture(x + 3 + 32 + wind / 3, y + 63 + 39 / 2, 1, 0.5);

draw_vertex_texture(x + 3 + wind, y + 63 + 39, 0, 1);
draw_vertex_texture(x + 3 + 32 + wind, y + 63 + 39, 1, 1);


draw_primitive_end();


//32 39

draw_sprite(spr_lamppost, 1, x, y);

