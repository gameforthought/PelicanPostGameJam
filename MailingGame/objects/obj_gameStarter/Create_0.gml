/// @description Insert description here
// You can write your code in this editor

randomSeed = irandom(2000);

global.pause = 1;

instance_create_layer(x,y, "Background", obj_timeTracker);

instance_create_depth(x,y, 0, obj_dialogue_manager);

instance_create_depth(x,y, 0, obj_dialogue_manager);



