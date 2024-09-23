/// @desc Title screen creation

/*	TEMP: Since there is no title screen yet (which would require a title screen room),
	the title screen is created in the main gameplay room. This statement exists so that
	the title screen only appears the first time the gameplay room is loaded. */
	
if (room == demo_room && showTitleScreen)
{
	showTitleScreen = false;
	open_menu(obj_title_screen);
}

if !instance_exists(currentMenu) {
	
	currentMenu = undefined;
	
}