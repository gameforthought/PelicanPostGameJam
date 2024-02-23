/// @description Insert description here
// You can write your code in this editor
surface_depth_disable(true);

windowScale = window_get_height() / room_height;

#macro COLOUR_FOR_NO_MOVE make_colour_rgb(127,127,255)

//_surface_distort = surface_create(room_width,room_height);

// name of what you want it to be called in the shader
distortion_stage = shader_get_sampler_index(sh_roundDistort, "distortion_texture_page")

shader_bloom = sh_bloom;
u_bloom_threshold = shader_get_uniform(shader_bloom, "bloom_threshold");
u_bloom_range = shader_get_uniform(shader_bloom, "bloom_range");

shader_blur = sh_blur;
u_blur_steps = shader_get_uniform(shader_blur, "blur_steps");
u_sigma = shader_get_uniform(shader_blur, "sigma");
u_blur_vector = shader_get_uniform(shader_blur, "blur_vector");
u_texel_size = shader_get_uniform(shader_blur, "texel_size");



width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

texel_w = 1 / width;
texel_h = 1 / height;

srf_ping = -1;
srf_pong = -1;


application_surface_draw_enable(false);



