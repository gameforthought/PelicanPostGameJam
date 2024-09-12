/// @desc Define game intro/logo

/// @desc Game Initialization

randomSeed = irandom(2000);
random_set_seed(randomSeed);

global.debug_mode = is_debug_mode;

randomSeed = irandom(2000);

global.pause = 1;
global.intro = true;
global.player_state = PlayerState.NoMove;

// Create management objects

instance_create_layer(x,y, "Background", obj_time_tracker);

instance_create_depth(x,y, 0, obj_objective_manager);

instance_create_depth(x,y, 0, obj_dialogue_manager);

instance_create_depth(x,y, 0, obj_music_manager);

instance_create_depth(x,y, 0, obj_player_manager);

instance_create_depth(x,y, 0, obj_menu_manager);

instance_create_depth(x,y, 0, obj_hud);

// Go to game room and display intro logo
room_goto(demo_room);

if (!is_debug_mode)
{
	instance_create_depth(x,y, 0, obj_studio_logo);
	window_set_fullscreen(true)
}