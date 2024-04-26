/// @description Insert description here
// You can write your code in this editor

	//open = true;
	
	if story != -1 {
		
		
		//wait for the player to stop moving before loading the story
		//if pepper hasn't yet reached her standing spot, delay the textbox loading
		if (obj_playerChar.pepper_state != PlayerState.NoMove){
			alarm[1] = abs((obj_playerChar.move_dest - obj_playerChar.x)/obj_playerChar.maxhspd) + 1;
			//abs((move_dest - x)/hspd)
		}
		else {
			alarm[1] = 1;
		}
		
		
		//check if pepper is overlapping the door
		
		//set Pepper in cutscene state and move her to the right of the door
		
	}

knock_amount = 0;