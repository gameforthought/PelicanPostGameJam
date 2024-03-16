/// @description Insert description here
// You can write your code in this editor
var _transition = {}

if room = demo_room {
_transition = {
	grow: false,
	next_room: post_office,
	player: true
}
}

if room = post_office {
_transition = {
	grow: false,
	next_room: demo_room,
	player: true
}
}

if instance_exists(obj_playerChar) {
	instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);
}