/// @description Insert description here
// You can write your code in this editor
#macro INVENTORY_SLOTS 24
row_length = 6;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 1;


x = 0;
y = 256;

windowScale = window_get_height() / room_height;

animation_step = 45;

animation_dir = 1;



