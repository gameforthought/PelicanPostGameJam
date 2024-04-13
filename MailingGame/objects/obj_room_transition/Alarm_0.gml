/// @description Insert description here
// You can write your code in this editor
if next_room != -1 {
		room_goto(next_room);	
	}
	if global.intro = false || room != demo_room {
		global.pause = 0;
	}
instance_destroy();	