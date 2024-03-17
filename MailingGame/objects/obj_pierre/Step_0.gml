/// @description Insert description here
// You can write your code in this editor

//character animation
char_anim += 1;
y_scale = 1 - (lerp(0.04, 0.02, (sprite_get_height(sprite) - 56) / 30) * cos(anim_speed * char_anim));

if char_anim > 252 {
char_anim = 0;	
}
