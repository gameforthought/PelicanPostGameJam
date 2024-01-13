/// @description Insert description here
// You can write your code in this editor

x += 0.4 * dir;
y -= 0.5 * up;

scale -= 0.05 * decay;

if scale <= 0 {
	instance_destroy();
}


