/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);

if room != post_office {

y = EaseInBack(animation_step, 0, y_bottom, 45);

animation_step += animation_dir;

animation_step = clamp(animation_step, 0, 45);

select_rotate += 1;

}


close_y = 44 + y;
if point_in_rectangle(mouse_x, mouse_y, vx + (close_x - 15), close_y - 30, vx + (close_x + 15), close_y) {
	close_rot = -5;
	if mouse_check_button_pressed(mb_left) {
		animation_dir = 1;
		global.pause = 0;
		//shift_dir = 1;
	}
} else {
	close_rot = 0;
}






