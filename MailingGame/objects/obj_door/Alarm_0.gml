/// @description Insert description here
// You can write your code in this editor
if irandom_range(0, 100) <= hearing + knock_amount * 10 {
	open = true;
	
	if story != -1 {
		load_story(story);
	}
}

show_debug_message("open?");

knock_amount = 0;