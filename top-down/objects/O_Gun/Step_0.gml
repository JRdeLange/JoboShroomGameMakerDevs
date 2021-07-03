/// @description Insert description here
// You can write your code in this editor

//// INPUT ////

key_fire = mouse_check_button_pressed(mb_left)

//// SET POSITION & ROTATION ////

x = O_Derek.x
y = O_Derek.y + 2

angle = point_direction(x, y, mouse_x, mouse_y)
bullet_angle = angle

if (angle > 90 && angle < 260){
	image_xscale = -1
	angle -= 180
} else {
	image_xscale = 1
}

image_angle = angle

//// FIRE ////

if (key_fire){
	dir_vec = normalize([mouse_x - x, mouse_y - y])
	bullet = instance_create_layer(x, y, "bullet", O_Bullet)
	bullet.dir = dir_vec
	bullet.image_angle = bullet_angle
}
	


