//Movement Right and Left affecting speed
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

//Jump Physics
if (place_meeting(x, y+2, tilemap_collision))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

//What makes the character actually move
move_and_collide(move_x, move_y, tilemap_collision);

if (move_x != 0) image_xscale = sign(move_x);

//sprite index for walking
if (move_x != 0) 
sprite_index = spr_p1_walk;
else 
sprite_index = spr_player_one;

//collision
if place_meeting(x,y,obj_enemy)
{
	instance_change(obj_p1_death, true);
}
else if place_meeting(x,y,obj_hitbox)
{
	instance_change(obj_p1_death, true);
}

if place_meeting(x,y,obj_winbox)
{
	instance_destroy(Room1);
	room_goto(Win);
}