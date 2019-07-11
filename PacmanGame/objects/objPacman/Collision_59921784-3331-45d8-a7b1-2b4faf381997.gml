/// @description Attack or hit

if other.sprite_index == sprGhostScared || other.sprite_index == sprGhostScared2
{
	global.puntos += 200;
	
	with(other)
	{
		x = xstart;
		y = ystart;
		sprite_index = sprGhostBlinky;
		v = 2;
		speed = 0; 
	}
}

else
if (global.hit == false)
{
	speed = 0;
	with(ObjCtrl){
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}
	sprite_index = sprPacmanDead;
	image_speed = 1;
	global.hit = true;
}