/// @description Insert description here
// You can write your code in this editor


//draw_sprite_stretched(
//	spr_inventory,
//	0,
//	x-6,
//	y-6,
//	12+row_length*36,
//	12+(((INVENTORY_SLOTS-1) div row_length)+1)*36
//);

//bg

draw_set_color(c_black);
draw_set_alpha(lerp(0.6, 0, y / 256));
draw_rectangle(0, 0, windowScale * 480, windowScale * 256, false);
draw_set_alpha(1);

//Frame
draw_sprite_ext(spr_inventory, 0, x, y * windowScale, windowScale, windowScale, 0, c_white, 1);




for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var xx = x + 69 + (i mod row_length) * 36;
	var yy = y + 84 + (i div row_length) * 35;
	var hover = (obj_mouse.inventory_hover == id) && (obj_mouse.slot_hover == i)
	
	
	//Test Coordinates
	if(hover){
	draw_set_color(#e6decf);
	}
	else{
	draw_set_color(#E8D7B4);
	}
	draw_circle(xx * windowScale, yy * windowScale, 12 * windowScale, false);
			
	
	if (inventory[i] != -1)
	{
		var alpha = 1.0;
		if (obj_mouse.inventory_drag == id) && (obj_mouse.slot_drag == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(spr_items,inventory[i],xx * windowScale, yy * windowScale);
		draw_set_alpha(1.0);
		//draw_text(xx*windowScale, yy*windowScale, string(inventory[i]));
	}
	
}
	
	
