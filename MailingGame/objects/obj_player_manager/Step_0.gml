/// @desc Global inputs

// Pause/unpause game
if (input_pause_pressed())
{
	// Open pause menu
	if (obj_menu_manager.currentMenu == undefined)
	{
		obj_menu_manager.open_menu(obj_pause);
	}
	// Close current menu
	else
	{
		// Do NOT close title screen on pause button press
		if (instance_exists(obj_title_screen)) return;
		
		obj_menu_manager.close_menu();
	}
}