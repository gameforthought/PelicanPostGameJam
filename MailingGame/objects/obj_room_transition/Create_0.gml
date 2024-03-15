/// @description Insert description here
// You can write your code in this editor
grow = true;
next_room = -1;

circle_x = 240;
circle_y = 128;

if grow = true {
	radius = 0;
	grow_amount = 2;
} else {
	radius = 240;
	grow_amount = -2;
}
windowScale = window_get_height() / room_height;
