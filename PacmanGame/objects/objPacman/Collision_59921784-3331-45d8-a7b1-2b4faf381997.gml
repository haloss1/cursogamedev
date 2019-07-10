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
		speed = v; 
	}
}

else
if (global.hit == false)
{
	speed = 0;
	global.vidas -= 1;
	sprite_index = sprPacmanDead;
	image_speed = 1;
	global.hit = true;
}