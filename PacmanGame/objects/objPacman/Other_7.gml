/// @description Verificar la animación de la muerte

if sprite_index = sprPacmanDead
{
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = sprPacmanRight;
	image_index = 0;
	
	global.hit = false;
}