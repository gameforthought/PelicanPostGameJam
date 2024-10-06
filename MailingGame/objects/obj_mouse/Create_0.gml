/// @desc State Machine
inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;
slot_select = -1;
mouse_down = false;

mouse_over = function(view_x, view_y)
{
	
	//show_debug_message(string(view_x) + "A, " + string(view_y))
	//empty
	slot_hover = -1;
	inventory_hover = -1;
	
	//mouse coords
	var mx = mouse_x;
	var my = mouse_y;

	//check for inventory slot hover
	with (obj_inventory)
	{
		//show_debug_message("mouse x:" + string(mx) + ", mouse y: " + string(my));
		//show_debug_message("x:" + string(x) + ", y: " + string(y));
		//if (point_in_rectangle
		//(
		//	mx,
		//	my,
		//	view_x + windowScale * 100, 
		//	view_y + windowScale * 30,
		//	view_x + windowScale * 220,
		//	view_y + windowScale * 110
		//))
		//{
			//show_debug_message("Mouse in rectangle");
			//check for mouseover in each slot
			for(var i = 0; i < INVENTORY_SLOTS; i++)
			{
				var xx = view_x + 69 + (i mod row_length) * 36;
				var yy = view_y + 84 + (i div row_length) * 35;
				
				if(i == 8){
					yy += 35;
				}
				
				if(point_in_circle(mx,my,xx,yy,12))
				{
					other.slot_hover = i;
					other.inventory_hover = id;
					//show_debug_message(string(i)+ " hover");
				}
			}
		//}
		
	}
}

state_free = function(view_x, view_y)
{
	mouse_over(view_x, view_y);
	//Select an item if slot is not empty
		if (mouse_check_button(mb_left)) && (slot_hover	!= -1) && (inventory_hover.inventory[slot_hover] != -1 && slot_hover == slot_select)
	{
		//Enter drag state
		state = state_drag;
		item_drag = inventory_hover.inventory[slot_hover];
		inventory_drag = inventory_hover;
		slot_drag = slot_hover;
		
		
		if(!mouse_down){
			show_debug_message(string(slot_hover)+ " deselected");
		
		//state = slot_select;
			slot_select = -1;
			mouse_down = true;
		}
		//item_drag = inventory_hover.inventory[slot_hover];
		//inventory_drag = inventory_hover;
		//slot_drag = slot_hover;
	}
	else if (mouse_check_button(mb_left)) && (slot_hover	!= -1) && (inventory_hover.inventory[slot_hover] != -1)
	{
		if(!mouse_down){
			show_debug_message(string(slot_hover)+ " selected");
			slot_select = slot_hover;
			mouse_down = true;
		}
	}
	if(!mouse_check_button(mb_left)){
		mouse_down = false;
	}
		

}

state_drag = function(view_x, view_y)
{
	mouse_over(view_x, view_y);
	if(!mouse_check_button(mb_left))
	{
		//swap with slot if hovering
		if(slot_hover != -1) inventory_swap(inventory_drag, slot_drag, inventory_hover, slot_hover);
		/*
		else
		{
			if(slot_select == id){
				slot_selecct = -1;
			}
			else{
				slot_select = id;
			}
			//show_debug_message("slot selected" + string(slot_select));
		}
		*/
		//Return to free state
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag = -1;	
		
	}
}




state = state_free;