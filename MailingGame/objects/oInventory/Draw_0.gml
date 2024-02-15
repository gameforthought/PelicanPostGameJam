/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(
	sInventory,
	0,
	x-6,
	y-6,
	12+row_length*36,
	12+(((INVENTORY_SLOTS-1) div row_length)+1)*36
);

for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var xx = x + (i mod row_length) * 36 + 2;
	var yy = y + (i div row_length) * 36 + 2;
	draw_sprite(sSlot,0,xx,yy)
	if (inventory[i] != -1)
	{
		draw_sprite(sItems,inventory[i],xx,yy);
	}
}
	
	
