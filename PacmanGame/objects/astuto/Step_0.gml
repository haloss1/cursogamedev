/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var ax;
var ay;

globalvar mapa;
if global.super == 0{
	switch(objPacman.direction){
	case 0:
	ax = 192;
	ay = 0;
	break;
	case 90:
	ax = 0;
	ay = -192;
	break;
	case 180:
	ax = -192;
	ay =0;
	break;
	case 270:
	ax = 0;
	ay = 192;
	break;
}
mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(astuto){
	camino = path_add();
	if mp_grid_path(mapa,camino,x,y,objPacman.x+ax,objPacman.y+ay,1){
		path_start(camino,3,3,0);
	}
	}
}
