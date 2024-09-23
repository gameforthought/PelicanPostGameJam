/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(lerp(0.4, 0, shift / 256));
draw_rectangle(0, 0, windowScale * 550, windowScale * 256, false);
draw_set_alpha(1);

//draw_rectangle((344 + shift) * windowScale, 0, (550 + shift)  * windowScale, 300  * windowScale, false);



//bg
draw_sprite_ext(spr_address_ui, 0, (9) * windowScale, (256 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);


//buttons
for (var i = 0; i < array_length(button_array); i++) {
	var xx = 80 + (i mod 3) * 38;
	var yy = (104 + (i div 3) * 38) + shift;
	
	draw_sprite_ext(spr_address_buttons, button_array[i].photo - 3, (xx) * windowScale, (yy) * windowScale, windowScale, windowScale, button_array[i].rot, c_white, 1);
}

//info
if current_clicked != undefined {
	draw_sprite_ext(spr_address_ui, 1, (9) * windowScale, (256 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	
	var _color = color_lookup(current_clicked.name);
	
	name.draw(335 * windowScale, (88 + shift) * windowScale);
	job.draw(335 * windowScale, (132 + shift) * windowScale);
	location.draw(234 * windowScale, (178 + shift) * windowScale);
	
	draw_sprite_ext(spr_address_photo, 1, (226) * windowScale, (46 + shift) * windowScale, windowScale, windowScale, 0, _color, 1);
	
	if current_clicked.met {
		draw_sprite_ext(spr_address_photo, current_clicked.photo, (226) * windowScale, (46 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_address_photo, 2, (226) * windowScale, (46 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	}
	
	draw_sprite_ext(spr_address_photo, 0, (226) * windowScale, (46 + shift) * windowScale, windowScale, windowScale, 0, c_white, 1);
	
	
}


//close button
draw_sprite_ext(spr_close_bt, 0, (close_x) * windowScale, (close_y + shift) * windowScale, windowScale, windowScale, close_rot, c_white, 1);



//black bars
draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, -30 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1);
draw_sprite_stretched_ext(spr_title, 0, -30 * windowScale, 256 * windowScale, 1000 * windowScale, 30 * windowScale, c_black, 1)

