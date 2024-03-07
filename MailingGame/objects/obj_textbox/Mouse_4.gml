/// @description Insert description here
// You can write your code in this editor

//text_to_display = "HI";
if (ink_can_continue()){
	text_to_display = ink_continue();
}
else {
	instance_destroy();
}