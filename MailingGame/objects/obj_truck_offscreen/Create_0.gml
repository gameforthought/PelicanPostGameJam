/// @description Insert description here
// You can write your code in this editor
camera = view_get_camera(0);
image_speed = 0;

offscreen = false;

down_progress = 0;
bounce = 0;
step = 0;

dir = -1; 
x_pos = camera_get_view_x(camera) + 60;
y_pos = -30;

image_xscale = dir;
