/// @desc Player and input management config

#region Character

	character = undefined;

	// Create a character and establish a link between that character and this player manager
	character_create = function(_x, _y, _layer, _obj, _config = {})
	{
		// Set "player" variable in character object being created to a reference of this player manager
		_config[$ "player"] = self;
	
		// Create character object and update player manager's character variable
		var _character = instance_create_layer(_x, _y, _layer, _obj, _config);
		character = _character;
	
		return _character;
	
	}
	
	// Unlink the current character from this player manager
	character_remove = function()
	{
		character = undefined;
		// Add other stuff after this if needed :)
	}
	
	// Destroy an active character and unlink that character and this player manager
	character_destroy = function()
	{
		if (character != undefined && instance_exists(character))
		{
			instance_destroy(character);
			character_remove();
		}
	}

#endregion

#region Input

	// Use JuJu Adams' Input library to get input
	input_left_held	= function()
	{
		return input_check("left");
	}
	input_right_held = function()
	{
		return input_check("right");
	}
	input_up_pressed = function()
	{
		return input_check_pressed("up");
	}

#endregion