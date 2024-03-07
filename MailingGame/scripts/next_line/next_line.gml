///Loads and returns the next line
///TODO: expand functionality to account for choices
function next_line(){
	if (ink_can_continue()){
		
		//load the text, emotion tag, and character tag
		text_to_display = ink_continue();
		
		var tag_count = ink_tag_count();
		show_debug_message("Tag count: " + string(tag_count));
		if (tag_count > 0){
			emotion_tag = ink_get_tag(1);
			name_tag = ink_get_tag(0);
		}
		
		
	}
	else {
		
		//this line of code is used to destroy a textbox when ready
		//instance_destroy();
	}
}