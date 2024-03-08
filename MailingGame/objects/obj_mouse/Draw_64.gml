if(item_drag != -1)
{
	draw_set_alpha(0.5);
	draw_sprite(spr_package_sm, item_drag, mouse_x * 2 - 310, mouse_y * 2 + 10);
	//draw_sprite(spr_items, 1,100,100);
	show_debug_message("mouse x:" + string(mouse_x) + ", mouse y: " + string(mouse_y));
	draw_set_alpha(1.0);
}
	