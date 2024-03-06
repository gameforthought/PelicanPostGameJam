/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_text_button, 0, windowScale * (x_init + xmod), windowScale * (y + ymod), windowScale * image_xscale, windowScale * image_yscale, 0, c_white, 1)

draw_set_color(color);
draw_rectangle((x_init + 5 + xmod) * windowScale, (y + 5 + ymod) * windowScale, (x_init + 109.5 + xmod) * windowScale, (y + 24.5 + ymod) * windowScale, false);

draw_set_color(c_white);
draw_set_font(ft_header);
draw_text((x_init + 10 + xmod) * windowScale, (y + 9 + ymod) * windowScale, text);