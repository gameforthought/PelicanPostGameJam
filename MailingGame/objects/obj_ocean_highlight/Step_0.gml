/// @description Insert description here
// You can write your code in this editor

size = sin(0.02 * pi * step);

step += 0.5;

if size <= 0 {
	instance_destroy();	
}


