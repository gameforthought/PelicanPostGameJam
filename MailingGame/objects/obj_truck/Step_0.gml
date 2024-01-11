/// @description movement
// You can write your code in this editor

//get left or right key press and change variables accordingly
if instance_exists(obj_playerChar) {} else {

switch (keyboard_key) {
case ord("A"):
case vk_left:
	//change direction vector
	xdirection = -1;
	speed_change = 1;
	//change direction of the current sprite
	image_xscale = 	-1;
break;
case ord("D"):
case vk_right:
	xdirection = 1;
	speed_change = 1;
	image_xscale = 	1;
break;
case vk_nokey:
	xdirection = 0;
	speed_change = 0;
break;
//default:
	//hdirection = 0;
//break;
}

//moves the character
x += xdirection * xspeed;


//detects change in direction and adjusts momentum
if (xdirection_prev != xdirection) {
	xspeed = 0;	
	//show_debug_message("direction changed " + string(xdirection_prev) + " " + string(xdirection) )
}

if (xspeed < max_xspeed) {
	xspeed += xaccel;	
}

xdirection_prev = xdirection;
}