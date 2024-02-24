inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;

mouse_over = function()
{
	//empty
	slot_hover = -1;
	inventory_hover = -1;
	
	//mouse coords
	var mx = mouse_x;
	var my = mouse_y;

	//check for inventory slot hover
	with (obj_inventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12+row_length*36,
			y-6 + 12+(((INVENTORY_SLOTS-1) div row_length)+1)*36
		))
		{
			//check for mouseover in each slot
			for(var i = 0; i < INVENTORY_SLOTS; i++)
			{
				var xx = x + (i mod row_length) * 36 + 2;
				var yy = y + (i div row_length) * 36 + 2;
				if(point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
				{
					other.slot_hover = i;
					other.inventory_hover = i;
				}
			}
		}
	}
}

state_free = function()
{
	mouse_over();
	//Start to drag an item if slot is not empty
	if (mouse_check_button(mb_left)) && (slot_hover	!= -1) && (inventory_hover.inventory[slot_hover]!= -1)
	{
		//enter drag state
		state = state_drag;
		item_drag = inventory_hover.inventory[slot_hover];
		inventory_drag = inventory_hover;
		slot_drag = slot_hover;
	}
}

state_drag = function()
{
	mouse_over();
	if(!mouse_check_button(mb_left))
	{
		//swap with slot if hovering
		if(slot_hover != -1) inventory_swap(inventory_drag, slot_drag, inventory_hover, slot_hover);
		
		//Return to free state
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag_drag = -1;	
		
	}
}