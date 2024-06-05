var camera = view_camera[0];

var vw = 480;
var vh = 256;

var initial_surf = surface_create(
surface_get_width(application_surface), 
surface_get_height(application_surface));

surface_set_target(initial_surf);
	draw_surface(application_surface, 0, 0);
surface_reset_target();

var surf_lights = surface_create(vw, vh);

surface_set_target(surf_lights);
	draw_clear_alpha(0, 0)
	camera_apply(view_get_camera(0));
	
	with(par_lights)
		//draw_sprite_ext(sprite_index, image_index,
		//x - view_xport[0],
		//y - view_yport[0],
		//1, 1, 0, c_white, 1 * lights_strength);
		event_perform(ev_draw, 0);
	
surface_reset_target();

var tex_lights = surface_get_texture(surf_lights);

var pass1_surf = surface_create(
surface_get_width(application_surface), 
surface_get_height(application_surface));

shader_set(shader);
	if room = demo_room {
		shader_set_uniform_f_array(u_col, color_mix);
		shader_set_uniform_f_array(u_con_sat_brt, con_sat_brt_mix);
	} else {
		shader_set_uniform_f_array(u_col, [128/255, 128/255, 128/255]);
		shader_set_uniform_f_array(u_con_sat_brt, [1, 1, 0, 0, 1]);
	}
		texture_set_stage(s_lights, tex_lights);
		var scale = 1;
		surface_set_target(pass1_surf);
	
			draw_surface_ext(initial_surf, 0, 0, scale, scale, 0, c_white, 1);
	
		surface_reset_target();
	
shader_reset();

var distort_map_surf = surface_create(vw, vh);

surface_set_target(distort_map_surf);
	draw_clear_alpha(COLOUR_FOR_NO_MOVE,0);
	
	for (var i = 0; i < 480; i += 1) {
		draw_set_color(make_color_rgb(127, 127 + (30 * sin((1 / 480) * pi * i)), 255));
		draw_rectangle(i, 0, i + 1, vh, false);
	}
	
surface_reset_target();

var distort_map_tex = surface_get_texture(distort_map_surf);

shader_set(sh_roundDistort);

    texture_set_stage(distortion_stage, distort_map_tex);
	
	draw_surface_ext(pass1_surf, 0, 0, 1, 1, 0, c_white, 1);

shader_reset();


//draw_surface_stretched(pass1_surf,
//view_xport[0],
//view_yport[0],
//surface_get_width(application_surface), 
//surface_get_height(application_surface));

surface_free(initial_surf);
surface_free(surf_lights);
surface_free(pass1_surf);
surface_free(distort_map_surf);