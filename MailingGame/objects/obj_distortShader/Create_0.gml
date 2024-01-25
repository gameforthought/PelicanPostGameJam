/// @description Insert description here
// You can write your code in this editor
surface_depth_disable(true);

#macro COLOUR_FOR_NO_MOVE make_colour_rgb(127,127,255)

//_surface_distort = surface_create(room_width,room_height);

// name of what you want it to be called in the shader
distortion_stage = shader_get_sampler_index(sh_roundDistort, "distortion_texture_page")



application_surface_draw_enable(false);



