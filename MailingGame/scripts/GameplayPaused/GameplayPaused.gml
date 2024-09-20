// Better Pause Detection
function GameplayPaused()
{
	// Check for objects that could pause gameplay. If there are none, return false.
	var _pauseObjCount = instance_number(obj_pause_game);
	if (_pauseObjCount == 0) return false;
	
	// Iterate through pause objects. If any are active, return true.
	for (var i = 0; i < _pauseObjCount; i++)
	{
		var _pauseObj = instance_find(obj_pause_game, i);
		if (_pauseObj.active == true) return true;
	}
	// Return false if no pause objects are active.
	return false;
}