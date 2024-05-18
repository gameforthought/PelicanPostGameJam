/// Render the textbox and the text
// You can write your code in this editor

//color the nametag
draw_set_color(color);
//draw_rectangle((xpos + 24) * windowScale, 17 * windowScale, (xpos + 103) * windowScale, 48 * windowScale, false)

//draw the name tag if the sprite exists
if (asset_get_index("spr_" + string_lower(name_tag) + "_nt") != -1)
draw_sprite_ext(asset_get_index("spr_" + string_lower(name_tag) + "_nt"), 0, (xpos + 24) * windowScale, (y_anim + 17) * windowScale, windowScale, windowScale, 0, c_white, 1);


//draw the textbox
draw_sprite_ext(spr_textbox_test,0, xpos * windowScale, y_anim * windowScale, windowScale, windowScale, 0, c_white, 1);

//set the color
draw_set_color(c_black);

//draw the text
draw_set_font(ft_gui);

richtext.draw((xpos + 33) * 2, (y_anim + 68) * windowScale, typewriter);
//draw_text_ext((xpos + 33) * windowScale, 68 * windowScale, text_to_display, line_height - 5, box_width * windowScale);


if (global.debug_mode) {
	show_tags();
}
else {
	var door_open_string = (door_open_tag ? "Door open!" : "Door closed!");
//draw_text((xpos + 24) * windowScale, 17 * windowScale, name_tag);
}

var vx = camera_get_view_x(view_camera[0]);
//vx = 0;
var vy = camera_get_view_y(view_camera[0]);


draw_set_color(color);
//draw button
//if forward = true {
	//draw_rectangle((xpos + 140 - 13) * windowScale, (y_anim + 224) * windowScale, (xpos + 140 + 14) * windowScale, (y_anim + 228 - 29) * windowScale, false)
	draw_sprite_ext(spr_next_bt, 1, (xpos + 140) * windowScale, (y_anim + 225) * windowScale, windowScale, windowScale, hover, color, 1);
	draw_sprite_ext(spr_next_bt, 0, (xpos + 140) * windowScale, (y_anim + 225) * windowScale, windowScale, windowScale, hover, c_white, 1);
//}

//draw character speech indicator

var yy = 130;
//draw_triangle((char_x - 6 - vx) * windowScale, (yy - 1 - bounce) * windowScale, (char_x - vx) * windowScale, (yy + 6 - bounce) * windowScale, (char_x + 5 - vx) * windowScale, (yy - 1 - bounce) * windowScale, false)

//draw_roundrect_ext((char_x - 16.5 - vx) * windowScale, (yy - 26 - bounce) * windowScale, (char_x + 16 - vx) * windowScale, (yy - bounce) * windowScale, 12, 12, false);

draw_sprite_ext(spr_speaker, 1, (char_x - vx) * windowScale, (yy - bounce) * windowScale, windowScale, windowScale, 0, color, 1);

draw_sprite_ext(spr_speaker, 0, (char_x - vx) * windowScale, (yy - bounce) * windowScale, windowScale, windowScale, 0, c_white, 1);
