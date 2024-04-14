/// @description Insert description here
// You can write your code in this editor
emote_step += 1;

x = parent.x
y = parent.y

if parent.char_anim > 240 {
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
	break;
	case "happy":
		eyes = 3;
	break;
	case "sad":
		eyes = 5;
	break;
	case "cry":
		eyes = 2;
	break;
	case "angry":
		eyes = 2;
	break;
	case "fear":
		eyes = 4;
	break;
	case "surprise":
		eyes = 4;
	break;
	case "sleepy":
		eyes = 5;
	break;
	case "blush":
		eyes = 2;
	break;
	case "sigh":
		eyes = 5;
	break;
	case "laugh":
		eyes = 3;
	break;
	case "confused":
		eyes = 2;
	break;
	default:
		eyes = 2;
	break;
}