// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_tags(){
var door_open_string = (door_open_tag ? "Door open!" : "Door closed!");
draw_text((xpos + 24) * windowScale, 17 * windowScale, emotion_tag + " " + name_tag + " " + door_open_string);	
}