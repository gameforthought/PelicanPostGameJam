/// @desc State Machine
inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;
slot_select = -1;

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
		show_debug_message("mouse x:" + string(mx) + ", mouse y: " + string(my));
		//show_debug_message("x:" + string(x) + ", y: " + string(y));
		if (point_in_rectangle
		(
			mx,
			my,
			windowScale * 100, 
			windowScale * 30,
			windowScale * 220,
			windowScale * 110
		))
		{
			//show_debug_message("Mouse in rectangle");
			//check for mouseover in each slot
			for(var i = 0; i < INVENTORY_SLOTS; i++)
			{
				var xx = camera_get_view_x(view_camera[0]) +  (i mod row_length) * 36;
				var yy = camera_get_view_y(view_camera[0]) +  (i div row_length) * 35;
				
				if(point_in_circle(mx,my,xx,yy,12))
				{
					other.slot_hover = i;
					other.inventory_hover = id;
					//show_debug_message(string(i)+ " hover");
				}
			}
		}
		else{
			//show_debug_message("mouse not in rectangle");
		}
	}
}

state_free = function()
{
	mouse_over();
	//Start to drag an item if slot is not empty
	if (mouse_check_button(mb_left)) && (slot_hover	!= -1) && (inventory_hover.inventory[slot_hover] != -1)
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
		if(slot_hover != -1 and slot_hover != inventory_hover) inventory_swap(inventory_drag, slot_drag, inventory_hover, slot_hover);
		else
		{
			if(slot_select == id){
				slot_selecct = -1;
			}
			else{
				slot_select = id;
			}
			show_debug_message("slot selected" + string(slot_select));
		}
		//Return to free state
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag = -1;	
		
	}
}

state = state_free;