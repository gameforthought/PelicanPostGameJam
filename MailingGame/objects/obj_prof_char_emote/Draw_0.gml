/// @description Insert description here
// You can write your code in this editor

//emotions drawn under

var char_anim_pos = sprite_get_height(sprite) * (1 - parent.y_scale);

if emotion = "cry" {
	
	draw_sprite_ext(spr_cry, 0, (x + face_x) - (dir * 2), 256 - 32 - face_y + eye_y + char_anim_pos + 2, (-1 + 2 * emote_anim_state), 1, 0, c_white, 1);
}
if emotion = "blush" {
	draw_sprite_ext(spr_blush, 0, (x + face_x) - (dir * 6), 256 - 32 - face_y + eye_y + char_anim_pos + 2, 1, 1, 0, c_white, 0.6);
}

//draw eyes
if blink = 0 || eyes = 5 {
	draw_sprite_ext(sprite, eyes, x, 256 - 32 + eye_y, dir, parent.y_scale, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite, 3, x, 256 - 32 + eye_y, dir, parent.y_scale, 0, c_white, 1);
}

//emotions drawn over
switch emotion {
	case "angry":
		draw_sprite_ext(spr_anger, 0, (x + face_x) + cos(dir * -pi / 4) * face_radius, 256 - 32 - face_y + (sin(dir * -pi / 4) * face_radius), 1 + emote_anim_state * 0.5, 1 + emote_anim_state * 0.5, dir * -20, c_white, 1);
	break;
	case "fear":
		draw_sprite_ext(spr_fear, 0, (x + face_x), 256 - 32 - face_y + char_anim_pos, 1, 1, 0, c_white, 0.9);
	break;
	case "surprise":
		draw_sprite_ext(spr_surprise, 0, (x + face_x) + cos((dir * -3 * pi) / 4) * face_radius, 256 - 32 - face_y + (sin((dir * -3 * pi) / 4) * face_radius), 1 + emote_anim_state * 0.5, 1 + emote_anim_state * 0.5, dir * -20, c_white, 1);
	break;
	case "confused":
		draw_sprite_ext(spr_what, 0, (x + face_x) + cos((dir * 3 * -pi) / 4) * face_radius, 256 - 32 - face_y + (sin((dir * 3 * -pi) / 4) * face_radius), 1 + emote_anim_state * 0.5, 1 + emote_anim_state * 0.5, dir * -20, c_white, 1);
	break;
	case "sigh":
		draw_sprite_ext(spr_sigh, 0, (x + face_x) + cos((dir * pi) / 4) * face_radius, 256 - 32 - face_y + (sin((dir * pi) / 4) * face_radius), 1 + emote_anim_state * 0.5, 1 + emote_anim_state * 0.5, 45, c_white, 1);
	break;
	case "laugh":
		draw_sprite_ext(spr_laugh, emote_anim_state, (x + face_x) + cos((-pi / 2) + (-1 + 2 * emote_anim_state) * (-pi / 4)) * (face_radius + 3), 256 - 32 - face_y + (sin((-pi / 2) + (-1 + 2 * emote_anim_state) * (pi / 4)) * (face_radius + 3)), 1.5, 1.5, (-1 + 2 * emote_anim_state) * 45, c_white, 1);
	break;
	case "sleepy":
		draw_sprite_ext(spr_sleepy, 0, (x + face_x) + cos((-pi / 2) + -dir * (-pi / 4)) * (face_radius + emote_anim_state * 2), 256 - 32 - face_y + (sin((-pi / 2) + -dir * (pi / 4)) * face_radius), 1 + emote_anim_state * 0.25, 1 + emote_anim_state * 0.25, dir * -20, c_white, 1);
	break;
}