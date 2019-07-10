/// @description More power
alarm[0] = room_speed*5;
global.puntos += 50;
global.super = 1;

with(cazador)
{
	sprite_index = sprGhostScared;
	image_index = 0;
	image_speed = 1;
	
	v = 2;
	speed = 2;
}

with(astuto)
{
	sprite_index = sprGhostScared;
	image_index = 0;
	image_speed = 1;
	
	v = 2;
	speed = 2;
}

with(agresivo)
{
	sprite_index = sprGhostScared;
	image_index = 0;
	image_speed = 1;
	
	v = 2;
	speed = 2;
}

with(tsundere)
{
	sprite_index = sprGhostScared;
	image_index = 0;
	image_speed = 1;
	
	v = 2;
	speed = 2;
}

instance_destroy(other);
