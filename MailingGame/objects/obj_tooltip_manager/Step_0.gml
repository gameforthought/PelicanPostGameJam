/// @desc Tooltip Logic

tooltipActive = instance_exists(obj_tooltip)

// Loop through tooltip conditions to check if any are met
if (!tooltipActive)
{
	for (var i = 0; i < ds_list_size(tooltipList); i++)
	{
		if (tooltipList[| i].show())
		{
			DisplayTooltip(tooltipList[| i]);
			ds_list_delete(tooltipList, i);
			break;
		}
	}
}