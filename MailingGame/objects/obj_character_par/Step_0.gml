/// @description Insert description here
// You can write your code in this editor

//character animation
char_anim += 1;

if char_anim > 252 {
char_anim = 0;	
}

if char_anim > 240 {
blink = 1;
} else {
	blink = 0;
}