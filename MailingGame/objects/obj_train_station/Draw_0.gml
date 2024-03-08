/// @description Insert description here
// You can write your code in this editor

if id = instance_find(obj_train_station, 0) {
for (var i = instance_find(obj_train_station, 0).x; i < instance_find(obj_train_station, 1).x; i += 48) {
	draw_sprite(spr_train_tracks, 0, i, 180);
}

}

draw_self();

draw_set_color(#d6c74a);
draw_set_font(ft_header);

draw_text(x + 260 - 179, y - 221 + 55, station_name);

draw_set_color(c_black);
draw_text(x + 260 - 179, y - 221 + 72, "Station");




