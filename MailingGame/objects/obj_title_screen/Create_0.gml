/// @description Insert description here
// You can write your code in this editor

start_shift = 0;
shift = 0;
shift_step = 0;

windowScale = window_get_height() / room_height;

start_struct = {
	color: #5a7fc8,
	text: "Let's Go!",
	event_obj: obj_title_screen,
	event: ev_alarm,
	event_num: 0
};

options_struct = {
	color: #d9c498,
	text: "Options",
	event_obj: obj_title_screen,
	event: ev_alarm,
	event_num: 0
};

close_struct = {
	color: #ca4d35,
	text: "Quit",
	event_obj: obj_title_screen,
	event: ev_alarm,
	event_num: 2
};

start_button = instance_create_layer(355, 155, layer_get_name(layer), obj_text_button_par, start_struct);

options_button = instance_create_layer(355, 155 + 32, layer_get_name(layer), obj_text_button_par, options_struct);

close_button = instance_create_layer(355, 155 + 64, layer_get_name(layer), obj_text_button_par, close_struct);
