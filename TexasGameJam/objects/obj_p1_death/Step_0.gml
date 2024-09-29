if(spr_p1_death and image_index < 1)
	{
		instance_destroy(self);
		room_goto(room_gameover);
	}