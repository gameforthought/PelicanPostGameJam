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
	obj_menu_manager.open_menu(obj_objective_info);
	//if !instance_exists(obj_objective_info) {
	//	instance_create_layer(0, 256, "positional_gui", obj_objective_info);
	//}
}

address = function() {
	obj_menu_manager.open_menu(obj_objective_info);
	//if !instance_exists(obj_objective_info) {
	//	instance_create_layer(0, 256, "positional_gui", obj_objective_info);
	//}
}

pause = function() {
	obj_menu_manager.open_menu(obj_pause);
	//if !instance_exists(obj_pause) {
	//	instance_create_layer(0, 256, "positional_gui", obj_pause);
	//}
}

summon = function() {
	show_debug_message("Hit the summon button!");
	try_summon_truck();
}


button_array = [
//{
//	func: summon,
//	color: PP_TAN,
//	icon: 2,
//	pos: 0,
//	rot: 0,
//},
{
	func: tasks,
	color: PP_BLUE,
	icon: 3,
	pos: 1,
	rot: 0,
},
//{
//	func: address,
//	color: PP_BLUE,
//	icon: 4,
//	pos: 2,
//	rot: 0,
//},
{
	func: pause,
	color: PP_RED,
	icon: 5,
	pos: 3,
	rot: 0,
}
];

button_array = array_reverse(button_array);

