/// @desc Character referencing safeguard

/*	If pepper already exists in the room, typically as a result of the room
	being persistent, update the current character reference to the existing
	pepper instance. This is assuming that pepper always takes priority as
	the playable character at the start of a room. */
	
if (instance_exists(obj_playerChar))
{
	// Get the id of the first obj_playerChar instance
	var _character = obj_playerChar.id;
	
	character_set(_character);
}
	