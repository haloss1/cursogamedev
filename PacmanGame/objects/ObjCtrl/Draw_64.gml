var l0C9E6D3D_0 = sprite_get_width(sprLifes);
var l0C9E6D3D_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l0C9E6D3D_2 = __dnd_lives; l0C9E6D3D_2 > 0; --l0C9E6D3D_2) {
	draw_sprite(sprLifes, 0, 30 + l0C9E6D3D_1, 4);
	l0C9E6D3D_1 += l0C9E6D3D_0;
}