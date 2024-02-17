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


sunset_color = [154/255, 110/255, 100/255];
night_color = [80/255, 95/255, 188/255];

col_param = [0.8, 0.6, -0.15, 0, 1];

light = 0;

app_surf = -1;
