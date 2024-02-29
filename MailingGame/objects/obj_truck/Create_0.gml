/// @description variable definitions
// You can write your code in this editor
hspd = 0;
image_speed = 0.01;

wheel_rotate = 0;

squash = 0;

char_anim = 0;
blink = 0;

dismount_anim = false;

clickable = false;

road_start = instance_find(obj_truck_barrier, 0).x + 120;
road_end = instance_find(obj_truck_barrier, 1).x - 120;