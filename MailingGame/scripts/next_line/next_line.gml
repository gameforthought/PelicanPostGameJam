///Loads and returns the next line
///TODO: expand functionality to account for choices
function next_line(){
	if (ink_can_continue()){
		//text_to_display = ink_continue();
		
		return ink_continue();
	}
	else {
		
		//this line of code is used to destroy a textbox when ready
		//instance_destroy();
	}
}