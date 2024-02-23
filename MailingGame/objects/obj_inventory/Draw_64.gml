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
	
	
	//Test Coordinates
	//draw_set_color(c_red);
	//draw_circle(xx * windowScale, yy * windowScale, 12 * windowScale, false);
	
	if (inventory[i] != -1)
	{
		draw_sprite(spr_items,inventory[i],xx * windowScale, yy * windowScale);
	}
}
	
	
