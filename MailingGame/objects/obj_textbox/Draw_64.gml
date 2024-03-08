/// Render the textbox and the text
// You can write your code in this editor

//color the nametag
draw_set_color(color);
//draw_rectangle((xpos + 24) * windowScale, 17 * windowScale, (xpos + 103) * windowScale, 48 * windowScale, false)
draw_sprite_ext(asset_get_index("spr_" + string_lower(name_tag) + "_nt"), 0, (xpos + 24) * windowScale, 17 * windowScale, windowScale, windowScale, 0, c_white, 1);


//draw the textbox
draw_sprite_ext(spr_textbox_test,0, xpos * windowScale, 0, windowScale, windowScale, 0, c_white, 1);

//set the color
draw_set_color(c_black);

//draw the text
draw_set_font(ft_gui);
draw_text_ext((xpos + 33) * windowScale, 68 * windowScale, text_to_display, line_height - 5, box_width * windowScale);


if (global.debug_mode) {
	show_tags();
}
else {
	var door_open_string = (door_open_tag ? "Door open!" : "Door closed!");
draw_text((xpos + 24) * windowScale, 17 * windowScale, name_tag);
}