/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var ax;
var ay;

globalvar mapa;
	switch(objPacman.direction){
	case 0:
	ax = -192;
	ay = 0;
	break;
	case 90:
	ax = 0;
	ay = 192;
	break;
	case 180:
	ax = 192;
	ay =0;
	break;
	case 270:
	ax = 0;
	ay = -192;
	break;
}
if global.super == 0 && objPacman.sprite_index != sprPacmanDead{

mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(agresivo){
	camino = path_add();
	if mp_grid_path(mapa,camino,x+32,y+32,objPacman.x+ax+32,objPacman.y+ay+32,1) && place_snapped(64,64){
		path_start(camino,global.vGhost,3,0);
	}

	}
}else{
	mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(agresivo){
	camino = path_add();
	if mp_grid_path(mapa,camino,x+32,y+32,(10*64)+32,(4*64)+32,1) && place_snapped(64,64){
		path_start(camino,global.vGhost,3,0);
	}
	}
}
