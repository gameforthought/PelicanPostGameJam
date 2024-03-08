/// @description Insert description here
// You can write your code in this editor

if dissolve = true {
	image_alpha -= 0.02;	
}

if image_alpha <= 0 {
	show_debug_message("gnomed")
	if obj_inventory.inventory[0] = -1 {
		obj_inventory.inventory[0] = {
			subimage: 2,
			to: "???",
			from: "???",
			desc: "An omen of things to come",
		};
	} else {
		obj_inventory.inventory[1] = {
			subimage: 2,
			to: "???",
			from: "???",
			desc: "An omen of things to come",
		};
	}
	instance_destroy();
}