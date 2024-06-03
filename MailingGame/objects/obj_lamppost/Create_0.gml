/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
banner = 0;

wind = 0;

texture = sprite_get_texture(spr_lamp_banner, banner);


if distance_to_object(obj_door) < 100 {
	instance_destroy();
}


glow = instance_create_layer(x + 46, y + 30, "lights", obj_test_light);