//Creating the Basics of Character Movement/Gravity/Speed
move_speed = 5;
jump_speed = 16;

move_x = 0;
move_y = 0;

acel = 0;

//Tiles are collisions
tilemap_collision = layer_tilemap_get_id("collision_tiles")


//What makes the character actually move
move_and_collide(move_x, move_y, tilemap_collision && obj_enemy);


if (move_x != 0) image_xscale = sign(move_x);


