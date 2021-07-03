/// @description Insert description here
// You can write your code in this editor

//// INPUT ////

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))

leftright = key_right - key_left
updown = key_down - key_up

//// MOVEMENT ////
xvel = vel * leftright
yvel = vel * updown

if (multi_place_meeting(x+xvel, y, wall_list)){
	while (not multi_place_meeting(x+sign(xvel), y, wall_list)){
		x += sign(xvel)
	}
	xvel = 0

}

if (multi_place_meeting(x, y+yvel, wall_list)){
	while (not multi_place_meeting(x, y+sign(yvel), wall_list)){
		y += sign(yvel)
	}
	yvel = 0
}

x += xvel
y += yvel


//// ANIMATION ////

if (xvel == 0 and yvel == 0){
	sprite_index = S_Derek_standing
} else {
	sprite_index = S_Derek_walking2
	if (leftright != 0) image_xscale = sign(leftright)
}

