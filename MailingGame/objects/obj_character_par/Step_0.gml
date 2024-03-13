/// @description Insert description here
// You can write your code in this editor

//character animation
char_anim += 1;
emote_step += 1;

if char_anim > 252 {
char_anim = 0;	
}

if char_anim > 240 {
blink = 1;
} else {
	blink = 0;
}

if emote_step > 20 {
	if emote_anim_state = 0 {
		emote_anim_state = 1;
	} else {
		emote_anim_state = 0;
	}
	
	emote_step = 0;
}



switch emotion {
	case "neutral":
		eyes = 2;
		mouth = 6;
	break;
	case "happy":
		eyes = 3;
		mouth = 7;
	break;
	case "sad":
		eyes = 5;
		mouth = 9;
	break;
	case "cry":
		eyes = 2;
		mouth = 9;
	break;
	case "angry":
		eyes = 2;
		mouth = 9;
	break;
	case "fear":
		eyes = 4;
		mouth = 9;
	break;
	case "surprise":
		eyes = 4;
		mouth = 8;
	break;
	case "sleepy":
		eyes = 5;
		mouth = 8;
	break;
	case "blush":
		eyes = 2;
		mouth = 7;
	break;
	case "sigh":
		eyes = 5;
		mouth = 7;
	break;
	case "laugh":
		eyes = 3;
		mouth = 6;
	break;
	case "confused":
		eyes = 2;
		mouth = 8;
	break;
	default:
		eyes = 2;
		mouth = 6;
	break;
}