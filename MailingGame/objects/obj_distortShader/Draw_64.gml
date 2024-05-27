/// @description Insert description here
// You can write your code in this editor

if (global.debug_mode) = false {

if surface_texture_page = -1 || !surface_exists(surf_distort_map) {
	surf_distort_map = surface_create(480, room_height);
	
	surface_set_target(surf_distort_map);
	
	draw_clear_alpha(COLOUR_FOR_NO_MOVE,0);

    // Distort draw
    for (var i = 0; i < 480; i += 1) {
		draw_set_color(make_color_rgb(127, 127 + (30 * sin((1 / 480) * pi * i)), 255));
		draw_rectangle(i, 0, i + 1, room_height, false);
	}
	
	surface_texture_page = surface_get_texture(surf_distort_map);
	
	surface_reset_target();
}




shader_set(sh_roundDistort);

    texture_set_stage(distortion_stage, surface_texture_page);

	
	draw_surface(obj_night.app_surf,0,0);
	//draw_surface(application_surface,0,0);
	
    

shader_reset();

surface_free(obj_night.app_surf);
surface_free(surf_distort_map);


}
