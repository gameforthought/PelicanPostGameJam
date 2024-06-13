/// @description Insert description here
// You can write your code in this editor


//text_to_display = "HI";
var vx = camera_get_view_x(view_camera[0]);

if typewriter.get_state() = 1 {

//checks if mouse is in button



var choice_length = array_length(choice_array);

if choice_length > 0 {

for (var i = 0; i < choice_length; i++) {
	
if point_in_rectangle(mouse_x, mouse_y, vx + (button_array[i + 1][0] - 15), 
		button_array[i + 1][1] - 30, 
		vx + (button_array[i + 1][0] + 15),
		button_array[i + 1][1]) {

//choice results here
show_debug_message("Choice " + choice_array[i])



}
}


} else {




if point_in_rectangle(mouse_x, mouse_y, vx + (xpos + 140 - 15), 225 - 30, vx + (xpos + 140 + 15), 225) {

	if (ink_can_continue()){
		//text_to_display = ink_continue();
		next_line();
		//alarm[0] = string_length(text_to_display) * 1.2;
		richtext = scribble(text_to_display);
		richtext.wrap(box_width * 2);
		richtext.line_height(-1, string_height(text_to_display) - 3);
		typewriter = scribble_typist();
		typewriter.in(type_speed, 0);
		pitch = 1;
		typewriter.sound_per_char([sd_type], pitch - 0.1, pitch + 0.1, " !.,?-;:()");
		forward = false;
	}
	else {
	
		up = false;
	
		if obj_time_tracker.night_bool = true {
			var _transition = {
			grow: false,
			next_room: ending_room_imagine,
			player: true
			}
		instance_create_layer(0, 0, "positional_gui", obj_room_transition, _transition);
	
		}
	
	}

}

}

} else {
	if point_in_rectangle(mouse_x, mouse_y, vx + (xpos + 140 - 15), 225 - 30, vx + (xpos + 140 + 15), 225) {
		typewriter.skip();
	}
}