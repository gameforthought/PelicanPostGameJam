/// @description Insert description here
// You can write your code in this editor

randomSeed = irandom(2000);

global.pause = 1;
global.intro = true;
global.player_state = PlayerState.NoMove;

instance_create_layer(x,y, "Background", obj_time_tracker);

instance_create_depth(x,y, 0, obj_dialogue_manager);

instance_create_depth(x,y, 0, obj_music_manager);

instance_create_depth(x,y, 0, obj_player_manager);