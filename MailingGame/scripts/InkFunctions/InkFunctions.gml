///Loads and returns the next line of dialogue
///TODO: expand functionality to account for choices
function next_line(){
	choice_array = [];
	if (ink_can_continue()){
		
		//load the text, emotion tag, and character tag
		text_to_display = ink_continue();
		
		var tag_count = ink_tag_count();
		//show_debug_message("Tag count: " + string(tag_count));
		if (tag_count > 0){
			emotion_tag = ink_get_tag(1);
			name_tag = ink_get_tag(0);
			
			if (tag_count >= 3) {
				door_open_tag = (ink_get_tag(2) == "open");
			}
		}
		
		
	}
	else {
		//check if the text is paused at a choice
		var choice_count = ink_choice_count();
		if (choice_count > 0){
			
			//README: The strings for each of the choices can be accessed in ink_choice(i)
			//Call ink_choose_choice(i) to make a choice
			//show_debug_message("Num choices: " + choice_count.string());
			
			
			//populate the textbox's choice_array
			for (var i=0; i<choice_count;i++){
			choice_array[i] = ink_choice(i);
			}
			
			
		}
		//if text is done, cue end of textbox
		else up = false;
		
		//this line of code is used to destroy a textbox when ready 
	}
}

//make the input choice, then progress the textbox to the next piece of dialogue
function choose_choice(choice){
	show_debug_message("Shoaboinboing");
	ink_choose_choice(choice);
	if (ink_can_continue()){	
		show_debug_message("PLEEEEEEEEEEEEEEEEEEEEeease");
	next_line();
	}
	else show_debug_message("Can't progress past choice");
}