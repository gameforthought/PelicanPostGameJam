/// @desc TEMP - Jump to video

var _transition = {
	grow: false,
	next_room: sf_24_videoloop,
	player: false
}
instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);