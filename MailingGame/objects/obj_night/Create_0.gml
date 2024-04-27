/// @description Insert description here
// You can write your code in this editor

shader = sh_night;
u_col = shader_get_uniform(shader, "col");
u_con_sat_brt = shader_get_uniform(shader, "con_sat_brt");

s_lights = shader_get_sampler_index(shader, "lights");
tex_lights = -1;
srf_lights = -1;

color_mix = -1;
con_sat_brt_mix	= -1;


sunset_color = [160/255, 135/255, 95/255];
night_color = [80/255, 95/255, 188/255];

sunset_col_param = [0.9, 0.8, -0.1, 0, 1];
night_col_param = [0.8, 0.6, -0.15, 0, 1];

light = 0;

app_surf = -1;

windowScale = global.window_scale;


// distort
//surface_depth_disable(true);

#macro COLOUR_FOR_NO_MOVE make_colour_rgb(127,127,255)

//_surface_distort = surface_create(room_width,room_height);

// name of what you want it to be called in the shader
distortion_stage = shader_get_sampler_index(sh_roundDistort, "distortion_texture_page")

surf_distort_map = -1;
surface_texture_page = -1;

//application_surface_draw_enable(false);
