//Creating the Basics of Character Movement/Gravity/Speed
move_speed = 5;
jump_speed = 30;

move_x = 0;
move_y = 0;

acel = 0;

//Tiles are collisions
tilemap_collision = layer_tilemap_get_id("collision_tiles");

//Health
health = 1;



//enemy timer
//setting up times
sec = 2;
milsec = 0;

//Start timer
alarm[0] = 2;

