/// @description Insert description here
// You can write your code in this editor

station_name = "";

station0 = instance_find(obj_train_station, 0);
station1 = instance_find(obj_train_station, 1);

if id = station0 {
	station_name = "Town Line";
}

if id = station1 {
	station_name = "Shoreside";
}

if id = station0 {


for (var i = instance_find(obj_train_station, 0).x + 500; i < instance_find(obj_train_station, 1).x - 500; i += 500) {
instance_create_layer(i, 64, "Collision", obj_lamppost);
}

}


