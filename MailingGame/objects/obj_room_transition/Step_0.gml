/// @description Insert description here
// You can write your code in this editor
radius += grow_amount;
radius = clamp(radius, 0, 400);

if player = true {
	grow_amount += sign(grow_amount) * 0.05;
}