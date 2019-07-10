/// @description Casi se acaba el poder

global.super = 0;

with(cazador)
{
	if sprite_index == sprGhostScared
	{
	image_speed = 1;
	sprite_index = sprGhostScared2;
	}
}

with(astuto)
{
	if sprite_index == sprGhostScared
	{
	image_speed = 1;
	sprite_index = sprGhostScared2;
	}
}

with(agresivo)
{
	if sprite_index == sprGhostScared
	{
	image_speed = 1;
	sprite_index = sprGhostScared2;
	}
}

with(tsundere)
{
	if sprite_index == sprGhostScared
	{
	image_speed = 1;
	sprite_index = sprGhostScared2;
	}
}

alarm[1] = room_speed*3;