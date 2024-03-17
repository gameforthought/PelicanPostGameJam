/// @description Insert description here
// You can write your code in this editor

//0: body
//1: arm

//2: regular eyes
//3: blink eyes
//4: wide eyes
//5: close eyes

//6: regular mouth
//7: smile
//8: wide mouth
//9: frown
sprite = spr_pierre;
anim_speed = 0.05;
shoulder_width = 16;
shoulder_height = 35;
face_y = 52;
face_radius = 16;
eye_x = 12;
eye_y = -1;

blink = 0;
char_anim = 0;

emote_anim_state = 0;
emote_step = 0;

emotion = "neutral";
eyes = 2;

speed_mod = 1;
y_scale = 1;

var _struct = {
	parent: id,	
	color: #564850,
	eye_y: 0,
}
emotion_drawer = instance_create_depth(x, y, layer_get_depth(layer) - 1, obj_prof_char_emote, _struct);

//show_debug_message(string(cos(30) * face_radius) + ", " + string(sin(30) * face_radius))
