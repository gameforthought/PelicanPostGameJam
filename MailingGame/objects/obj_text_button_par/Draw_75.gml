/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_text_button, 1, windowScale * (x_init + xmod), windowScale * (y + ymod), windowScale * image_xscale, windowScale * image_yscale, rotate, color, 1)
draw_sprite_ext(spr_text_button, 0, windowScale * (x_init + xmod), windowScale * (y + ymod), windowScale * image_xscale, windowScale * image_yscale, rotate, c_white, 1)

//draw_set_color(color);
//draw_rectangle((x_init + 5 + xmod) * windowScale, (y + 5 + ymod) * windowScale, (x_init + 109.5 + xmod) * windowScale, (y + 24.5 + ymod) * windowScale, false);

label.draw((x_init + 10 + xmod - 57) * windowScale, (y + 8 + ymod - 8) * windowScale);
label.transform(1, 1, rotate);
//draw_text_transformed((x_init + 10 + xmod - 57) * windowScale, (y + 6 + ymod - 15) * windowScale, text, 1, 1, rotate);