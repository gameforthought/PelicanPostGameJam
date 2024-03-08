/// @description Insert description here
// You can write your code in this editor

station_name = "";

if id = instance_find(obj_train_station, 0) {
	station_name = "Town Line";
}

if id = instance_find(obj_train_station, 1) {
	station_name = "Shoreside";
}

if id = instance_find(obj_train_station, 0) {


for (var i = instance_find(obj_train_station, 0).x + 500; i < instance_find(obj_train_station, 1).x - 500; i += 500) {
instance_create_layer(i, 64, "Collision", obj_lamppost);
}

}


