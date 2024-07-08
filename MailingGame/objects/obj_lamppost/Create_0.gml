/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
banner = 0;

wind = 0;

texture = sprite_get_texture(spr_lamp_banner, banner);


if distance_to_object(obj_door) < 400 {
	instance_destroy();
} else {


glow = instance_create_layer(x + 43, y + 26, "lights", obj_lamp_light);

}