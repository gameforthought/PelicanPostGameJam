/// @description Insert description here
// You can write your code in this editor

depth += 120;


shift_dir = -1;
shift = 0;
shift_step = 60;


//windowScale = window_get_height() / room_height;
windowScale = 2

//button functions
tasks = function() {
	if !instance_exists(obj_objective_info) {
		instance_create_layer(0, 256, "positional_gui", obj_objective_info);
	}
}

address = function() {
	if !instance_exists(obj_objective_info) {
		instance_create_layer(0, 256, "positional_gui", obj_objective_info);
	}
}

pause = function() {
	if !instance_exists(obj_pause) {
		instance_create_layer(0, 256, "positional_gui", obj_pause);
	}
}


button_array = [
{
	func: 1, //summon
	color: PP_TAN,
	icon: 2,
	pos: 0,
	rot: 0,
},
{
	func: tasks,
	color: PP_RED,
	icon: 3,
	pos: 1,
	rot: 0,
},
{
	func: address,
	color: PP_BLUE,
	icon: 4,
	pos: 2,
	rot: 0,
},
{
	func: pause,
	color: PP_RED,
	icon: 5,
	pos: 3,
	rot: 0,
}
];

