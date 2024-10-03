/// @description Insert description here
// You can write your code in this editor

if id = station0 {
for (var i = station0.x; i < station1.x; i += 48) {
	if (i > obj_camera_manager.camera_target - 420) && (i < obj_camera_manager.camera_target + 420) {
		draw_sprite(spr_train_tracks, 0, i, 180);
	}
}

}

draw_self();

draw_set_color(#d6c74a);
draw_set_font(ft_header);
draw_set_halign(fa_left);

draw_text(x + 98, y - 128, station_name);

draw_set_color(c_black);
draw_text(x + 98, y - 128 + 12, "Station");




