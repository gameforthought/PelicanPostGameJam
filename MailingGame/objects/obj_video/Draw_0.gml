/// @desc Draw video surface

var _videoData = video_draw();
var _videoStatus = _videoData[0];

// If the video is playing without any errors
if (_videoStatus == 0)
{
	draw_surface(_videoData[1], 0, 0);
}