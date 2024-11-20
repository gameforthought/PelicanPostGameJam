///@desc Idle screen config
curTime = 0;
timeToIdle = 2700; // (45s * 60fps)

_transition = {
	grow: false,
	next_room: sf_24_videoloop,
	player: false
}

ToIdleScreen = function ()
{
	curTime = 0;
	instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);
}