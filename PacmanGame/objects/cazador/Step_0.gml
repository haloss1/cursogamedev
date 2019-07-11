/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
globalvar mapa;


if global.super == 0 && objPacman.sprite_index != sprPacmanDead{
mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(cazador){
	camino = path_add();
	if mp_grid_path(mapa,camino,x+32,y+32,objPacman.x+32,objPacman.y+32,1) && place_snapped(64,64){
		path_start(camino,global.vGhost,3,0);
	}
}
}else{
	mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
	mp_grid_add_instances(mapa, pared, false);
	with(cazador){
	camino = path_add();
	if mp_grid_path(mapa,camino,x+32,y+32,(10*64)+32,(4*64)+32,1) && place_snapped(64,64){
		path_start(camino,global.vGhost,3,0);
	}
	}
}
//distance = 256
