///@desc Definitions

tooltipActive = false;
tooltipList = ds_list_create();

function AddTooltip(displayText, showCondition, hideCondition)
{
	ds_list_add(tooltipList,
	{
		text: displayText,
		show: showCondition,
		hide: hideCondition
	});
}

function DisplayTooltip(struct)
{
	instance_create_depth(x, y, depth, obj_tooltip, struct);
}

// Add initial tooltips

AddTooltip(
	"press wasd or arrows to move",
	function(){ return room == post_office; },
	function(){ return input_check_pressed("left"); },
);