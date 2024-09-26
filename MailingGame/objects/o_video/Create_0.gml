/// @desc Define looping video

// Destroy objects which may cause issues in current
// room or upon game restart.
instance_destroy(obj_menu_manager);
instance_destroy(obj_player_manager);
instance_destroy(obj_music_manager);
instance_destroy(obj_hud);
audio_stop_all();

video = video_open("hidrew.mp4");
video_enable_loop(true);