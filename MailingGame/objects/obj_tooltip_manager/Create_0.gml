///@desc Definitions

tooltipActive = undefined;
tooltipList = ds_list_create();

// Create a tooltip struct and add it to the tooltip list
add_tooltip = function(displayText, showCondition, hideCondition)
{
	var _tooltip = new Tooltip(displayText, showCondition, hideCondition);
	ds_list_add(tooltipList, _tooltip);
	
	return _tooltip;
}

// Create a tooltip that is displayed on screen and establish a reference to it
show_tooltip = function(struct)
{
	// Do not display tooltip if there is an active tooltip
	if (tooltipActive != undefined) return;
	
	// TEMP - x, y, and depth are subject to change
	tooltipActive = instance_create_depth(x, y, depth, obj_tooltip, struct);
}

// Hide the current active tooltip and set tooltipActive to undefined
hide_tooltip = function()
{
	// Do not attempt to hide the tooltip if there is none
	if (tooltipActive == undefined) return;
	
	// TEMP - the tooltip object will have a hide animation so it won't be destroyed directly from here 
	instance_destroy(tooltipActive);
	tooltipActive = undefined;
}


// Tooltip Constructor
function Tooltip(displayText, showCondition, hideCondition) constructor
{
	text = displayText;
	show = showCondition;
	hide = hideCondition;
}

// Add initial tooltip(s)
add_tooltip(
	"press wasd or arrows to move",
	function(){ return room == post_office; },
	function(){ return input_check_pressed("left"); },
);
add_tooltip(
	"again",
	function(){ return room == post_office; },
	function(){ return input_check_pressed("left"); },
);