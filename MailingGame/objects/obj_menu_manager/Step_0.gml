/// @description controls clock and hud appearances

hudAppear++;


//checks to make sure a menu doesn't exist
if currentMenu != undefined {
	hudAppear = 0;
}

//checks to make sure a textbox doesn't exist (temp)
if instance_exists(obj_textbox) || instance_exists(obj_room_transition) || (obj_inventory.animation_step = 0) {
	hudAppear = 0;
}


//checks to make sure the player isn't moving
if (instance_exists(obj_player_manager))
{
	var _activePlayer = obj_player_manager.character;
	if (_activePlayer != undefined)
	{
		if (_activePlayer.hspd != 0)
		{
			hudAppear = 0;
		}
	}
}