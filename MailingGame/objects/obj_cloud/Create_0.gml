/// @description Insert description here
// You can write your code in this editor

pos = x;

image_speed = 0;

image_index = irandom(5);

darker_a = make_color_rgb(205, 205, 230);

if layer_get_name(layer) = "clouds2" {
	layer_color = darker_a;
} else {
	layer_color = c_white;
}

cloud_speed = random_range(0, 0.05);



