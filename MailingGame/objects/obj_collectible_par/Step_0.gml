/// @description Insert description here
// You can write your code in this editor
if dissolve = true {
	image_alpha -= 0.02;	
}

if instance_exists(obj_playerChar) && distance_to_object(obj_playerChar) < 320 {
	clickable = true;	
} else {
	clickable = false;
}

if clickable = true {
	//shine_step += 1.5 - (abs(100 - shine_step) / 50);
	shine_step += 0.4;
}

if shine_step >= 100 {
	shine_step = 0;	
}