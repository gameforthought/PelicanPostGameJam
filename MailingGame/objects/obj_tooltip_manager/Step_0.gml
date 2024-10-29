/// @desc Tooltip Logic

// Loop through tooltip conditions to check if any are met
// Only loop if there is not currently a tooltip active
if (tooltipActive == undefined)
{
	for (var i = 0; i < ds_list_size(tooltipList); i++)
	{
		if (tooltipList[| i].show())
		{
			show_tooltip(tooltipList[| i]);
			ds_list_delete(tooltipList, i);
			break;
		}
	}
}
// If there is an active tooltip, check if its hide condition is met
else
{
	if (tooltipActive.hide())
	{
		hide_tooltip();
	}
}