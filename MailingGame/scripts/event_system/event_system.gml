// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_event_system()
{
	 global.event_array = 0;
for(var i = 0; i < 100;i++)
{
	for(var j = 0; j < 100;j++)
	{
		global.event_array[i,j] = 0;
	}
	
}

}


function get_event_data( i, j)
{
	return global.event_array[i,j];
}