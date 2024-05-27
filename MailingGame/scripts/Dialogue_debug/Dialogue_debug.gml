// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Shows the tags of the current dialogue line
function show_tags(){
var door_open_string = (door_open_tag ? "Door open!" : "Door closed!");
draw_text((xpos + 24) * windowScale, 17 * windowScale, emotion_tag + " " + name_tag + " " + door_open_string);	
}

//Skips to the end of the current dialogue
function skip_dialogue(){
	while (ink_can_continue()){
		ink_continue();
	}
}