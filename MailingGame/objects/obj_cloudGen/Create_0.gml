/// @description Insert description here
// You can write your code in this editor

cloud_layer = choose(-1, 1);

for (var i = 0; i < (480 + 260); i += 210) {
	if cloud_layer = -1 {
		instance_create_layer(i - 130 + irandom_range(-100, 100), 200 + irandom_range(-20, -40), "clouds1", obj_cloud);	
	} else {
		instance_create_layer(i - 130 + irandom_range(-100, 100), 200 + irandom_range(-20, -40), "clouds2", obj_cloud);
	}
	
	cloud_layer *= -1;
}


