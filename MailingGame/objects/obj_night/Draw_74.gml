/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(srf_lights)) {
	srf_lights = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
	tex_lights = surface_get_texture(srf_lights);
}

if (!surface_exists(app_surf)) {
	app_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
}

surface_set_target(srf_lights);

var lights_strength = light;
var _windowScale = windowScale
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	with(par_lights)
		draw_sprite_ext(sprite_index, image_index, _windowScale * (x - vx), _windowScale * (y - vy), _windowScale * image_xscale, _windowScale * image_yscale, image_angle, image_blend, image_alpha * lights_strength);


gpu_set_tex_filter(false); // optional
	gpu_set_blendmode(bm_normal);
surface_reset_target();


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
	surface_set_target(app_surf);
	
	if surface_exists(application_surface)
		draw_surface_ext(application_surface, 0, 0, scale, scale, 0, c_white, 1);
	
	surface_reset_target();
	
shader_reset();

if (surface_exists(srf_lights)) {
surface_free(srf_lights);
}

//distort
//if surface_texture_page = -1 || !surface_exists(surf_distort_map) {
//	surf_distort_map = surface_create(480, room_height);
	
//	surface_set_target(surf_distort_map);
	
//	draw_clear_alpha(COLOUR_FOR_NO_MOVE,0);

//    // Anything we draw here will distort the screen
//    for (var i = 0; i < 480; i += 1) {
//		draw_set_color(make_color_rgb(127, 127 + (30 * sin((1 / 480) * pi * i)), 255));
//		draw_rectangle(i, 0, i + 1, room_height, false);
//	}
	
//	surface_texture_page = surface_get_texture(surf_distort_map);
	
//	surface_reset_target();
//}

//show_debug_message(string(application_surface));
//show_debug_message(string(surface_get_target()));

//shader_set(sh_roundDistort);

//    texture_set_stage(distortion_stage, surface_texture_page);

	
//	draw_surface(app_surf,0,0);
//	//draw_surface(application_surface,0,0);
	
    

//shader_reset();



surface_free(app_surf);
surface_free(surf_distort_map);