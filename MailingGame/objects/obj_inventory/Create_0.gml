/// @description Insert description here
// You can write your code in this editor
depth += 80;

#macro INVENTORY_SLOTS 8
row_length = 4;
inventory = array_create(INVENTORY_SLOTS, -1);

//randomize();


//inventory[0] = {
//	key: "Bea1",
//	subimage: 0,
//	to: "Beatrice",
//	from: "UC Books",
//	desc: "A small box from a book publisher",
//};

//give_item(-1, ["Bea1","package","Beatrice","UC Books","A small box from a book publisher"], -1)
//give_item(-1, ["cly1","package","Clyde","Gnome Feed","Feeds gnomes"], -1)

x = 0;
y = 256;

windowScale = global.window_scale;

animation_step = 45;

animation_dir = 1;

select_rotate = 0;



