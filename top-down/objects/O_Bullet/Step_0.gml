/// @description Insert description here
// You can write your code in this editor

x += dir[0] * vel
y += dir[1] * vel

if (multi_place_meeting(x, y, wall_list)){
	print("-")
	instance_destroy(id)
}