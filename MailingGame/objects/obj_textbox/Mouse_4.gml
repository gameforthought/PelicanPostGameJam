/// @description Insert description here
// You can write your code in this editor


//text_to_display = "HI";
var vx = camera_get_view_x(view_camera[0]);

if typewriter.get_state() = 1 {

//checks if mouse is in button
if point_in_rectangle(mouse_x, mouse_y, vx + (xpos + 140 - 15), 225 - 30, vx + (xpos + 140 + 15), 225) {

if (ink_can_continue()){
	//text_to_display = ink_continue();
	next_line();
	//alarm[0] = string_length(text_to_display) * 1.2;
	richtext = scribble(text_to_display);
	richtext.wrap(box_width * windowScale);
	richtext.line_height(-1, string_height(text_to_display) - 5);
	typewriter = scribble_typist();
	typewriter.in(type_speed, 0);
	forward = false;
}
else {
	
	up = false;
	
}

}

} else {
	typewriter.skip()	
}