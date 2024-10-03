///Loads and returns the next line of dialogue
///TODO: expand functionality to account for choices
function next_line(){
	choice_array = [];
	choice_count = 0;
	choice_preview_array = [];
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
		choice_count = ink_choice_count();
		if (choice_count > 0){
			
			//README: The strings for each of the choices can be accessed in ink_choice(i)
			//Call ink_choose_choice(i) to make a choice
			//show_debug_message("Num choices: " + choice_count.string());
			
			show_debug_message("Choices detected");
			temp_ink_json = ink_save_state();
			choice_preview_array = [];
			//populate the textbox's choice_array and choice_preview_array
			for (var i=0; i<choice_count;i++){
			choice_array[i] = ink_choice(i);
			
			//go to the next line of dialogue for each choice and save the text
			ink_choose_choice(i);
			ink_continue();
			choice_preview_array[i] = ink_continue();
			//then return to the previous state
			ink_load_state(temp_ink_json);
			show_debug_message(string("Choice number {0}: {1}", i, choice_preview_array[i]));
			}
			

			
		}
		//if text is done, cue end of textbox
		else {
			up = false;
			show_debug_message("End of text");
		}
		
		//this line of code is used to destroy a textbox when ready 
	}
}

//make the input choice, then progress the textbox to the next piece of dialogue
function choose_choice(choice){
	ink_choose_choice(choice);
	if (ink_can_continue()){	
		show_debug_message("Choice chosen; progressing to next line");
	next_line();
	next_line();
	}
	else show_debug_message("Can't progress past choice");
}