///@desc Definitions

tooltipActive = undefined;
tooltipList = ds_list_create();

// Create a tooltip struct and add it to the tooltip list
add_tooltip = function(eventID, displayText, showCondition, hideCondition = function() { return false })
{
	var _tooltip = new Tooltip(eventID, displayText, showCondition, hideCondition);
	ds_list_add(tooltipList, _tooltip);
	
	return _tooltip;
}

// Create a tooltip that is displayed on screen and establish a reference to it
show_tooltip = function(struct)
{
	// Do not display tooltip if there is an active tooltip
	if (tooltipActive != undefined) return;
	
	// TEMP - x, y, and depth are subject to change
	tooltipActive = instance_create_layer(x, y, "positional_gui", obj_tooltip, struct);
}

// Hide the current active tooltip and set tooltipActive to undefined
hide_tooltip = function()
{
	// Do not attempt to hide the tooltip if there is none
	if (tooltipActive == undefined) return;
	
	// Hide the tooltip
	tooltipActive.complete();
	tooltipActive = undefined;
}

// Attempt to hide the current active tooltip if it matches the given event id
hide_tooltip_by_id = function(eventID)
{
	// Do not attempt to hide the tooltip if there is none
	if (tooltipActive == undefined) return;
	
	// If active tooltip has given event id, hide the tooltip
	if (tooltipActive.event_id == eventID) hide_tooltip();
}


// Tooltip Constructor
function Tooltip(eventID, displayText, showCondition, hideCondition) constructor
{
	event_id	= eventID; 
	text		= displayText;
	show		= showCondition;
	hide		= hideCondition;
}

// Add initial tooltip(s)
add_tooltip(
	"tt_walk",
	"Use [scale, 2][wave][spr_tooltip_icons, 1][spr_tooltip_icons, 0][/] or [scale, 2][wave][spr_tooltip_icons, 2][spr_tooltip_icons, 3][/] to walk",
	function(){ return room == post_office; },
	function()
	{
		if(instance_exists(obj_playerChar)) return obj_playerChar.hspd != 0;
		return false;
	}
);
add_tooltip(
	"tt_pierre",
	"Click[scale, 2][wave][spr_tooltip_icons, 4][/] on things with [scale, 2][wave][spr_tooltip_icons, 5][/]",
	function(){ return room == post_office; }
);