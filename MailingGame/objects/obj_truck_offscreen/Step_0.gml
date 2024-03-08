/// @description Insert description here
// You can write your code in this editor

x = x_pos + dir * bounce;

bounce = 2 * sin(step);

step += 0.1;

if (obj_truck.x < camera_get_view_x(camera) || obj_truck.x > camera_get_view_x(camera) + 600) && global.pause = 0 {
	offscreen = true;
} else {
	offscreen = false;
}

if obj_truck.x < camera_get_view_x(camera) {
	dir = -1;
}

if obj_truck.x > camera_get_view_x(camera) + 480 {
	dir = 1;
}

if dir = -1 {
	x_pos = camera_get_view_x(camera) + 30;
} else {
	x_pos = camera_get_view_x(camera) + 450;
}


if offscreen = true {
	down_progress += 1;	
} else {
	down_progress -= 1;	
}

down_progress = clamp(down_progress, 0, 60);

y = EaseInOutBack(down_progress, -30, 60, 60);
