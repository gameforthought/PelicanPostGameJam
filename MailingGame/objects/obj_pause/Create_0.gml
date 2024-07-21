/// @description Insert description here
// You can write your code in this editor

shift_dir = -1;
shift = 0;
shift_step = 60;

global.pause = true;

//windowScale = window_get_height() / room_height;
windowScale = 2

decoration = [
{
x_pos: -20,
y_pos: 123,
v: 0,
h: -1,
rot: 90,
subimage: 2
},
{
x_pos: 358,
y_pos: 2,
v: -1.5,
h: 1.5,
rot: 157,
subimage: 2
},
{
x_pos: -25,
y_pos: 148,
v: 0,
h: -1,
rot: 167,
subimage: 1
},
{
x_pos: 113,
y_pos: 40,
v: -1.5,
h: -1.5,
rot: 200,
subimage: 0
},
{
x_pos: 17,
y_pos: 314,
v: 1,
h: -1,
rot: 20,
subimage: 3
},
{
x_pos: 258,
y_pos: 305,
v: 1.5,
h: 0,
rot: -5,
subimage: 0
},
{
x_pos: 416,
y_pos: 162,
v: 0,
h: 1,
rot: 83,
subimage: 1
},


]

start_struct = {
	color: #5a7fc8,
	text: "Resume",
	event_obj: obj_pause,
	event: ev_alarm,
	event_num: 0
};

//options_struct = {
//	color: #d9c498,
//	text: "Options",
//	event_obj: obj_pause,
//	event: ev_alarm,
//	event_num: 0
//};

close_struct = {
	color: #ca4d35,
	text: "Quit",
	event_obj: obj_pause,
	event: ev_alarm,
	event_num: 2
};

start_button = instance_create_depth(355, 155, depth - 100, obj_text_button_par, start_struct);

//options_button = instance_create_layer(355, 155 + 32, layer_get_name(layer), obj_text_button_par, options_struct);

close_button = instance_create_depth(355, 155 + 32, depth - 100, obj_text_button_par, close_struct);
//64