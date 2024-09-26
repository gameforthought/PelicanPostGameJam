/// @desc Progress idle timer
// Progress idle timer at all times except when already in the idle video room. Idle timer should progress even while the game is paused (in
// case a player leaves the game while its still paused.
if (room != rgf_24_videoloop)
{
	// Go to idle screen if idle for long enough
	if (curTime >= timeToIdle)
	{
		ToIdleScreen();
	}
	// Increase timer by 1 every frame, 0.5 every frame while game is paused
	if (GameplayPaused()) curTime += 0.5;
	else curTime++;
}
else curTime = 0;

show_debug_message(curTime);