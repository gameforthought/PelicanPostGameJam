/// @description Insert description here
// You can write your code in this editor

var _surface_distort = surface_create(room_width,room_height);


surface_set_target(_surface_distort);

    draw_clear_alpha(COLOUR_FOR_NO_MOVE,0);

    // Anything we draw here will distort the screen
    for (var i = 0; i < room_width; i += 1) {
		draw_set_color(make_color_rgb(127, 127 + (30 * sin((1 / room_width) * pi * i)), 255));
		draw_rectangle(i, 0, i + 1, room_height, false);
	}

var _surface_texture_page = surface_get_texture(_surface_distort);

surface_reset_target();



shader_set(sh_roundDistort);

    texture_set_stage(distortion_stage, _surface_texture_page);
	draw_surface(application_surface,0,0);
    

shader_reset();

surface_free(_surface_distort); // always remember to remove the surface from memory 

