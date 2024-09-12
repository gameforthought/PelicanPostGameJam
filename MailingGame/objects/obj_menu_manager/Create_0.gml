/// @desc Manage active menu
currentMenu = undefined;

// Create a new menu and update this manager's active menu
open_menu = function(_menuType)
{
	// If there is already a menu open, do not create a new one
	if (currentMenu != undefined) return undefined;
	
	// Create the new menu and update the current menu variable.
	var _menu = instance_create_layer(0, 0, "positional_gui", _menuType);
	currentMenu = _menu;
	
	return _menu;
}

// Destroy the current menu and update this manager's active menu.
close_menu = function()
{
	// If there is no menu to close, return
	if (currentMenu == undefined) return;
	
	// Close the current menu and update the current menu variable.
	currentMenu.shift_dir = 1; // TEMP - replace with a .close() method call
	currentMenu = undefined;
}