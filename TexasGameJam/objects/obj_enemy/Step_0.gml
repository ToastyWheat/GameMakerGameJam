//Jump Physics
if (place_meeting(x, y+2, tilemap_collision))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 2;

//What makes the character actually move
move_and_collide(move_x, move_y, tilemap_collision);

if (move_x != 0) image_xscale = sign(move_x);