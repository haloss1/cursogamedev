/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.super == 1){
with (cazador){

mapa = mp_grid_create(0,0, room_width div 16, room_height div 16,16,16);
mp_grid_add_instances(mapa, pared, false);

	camino = path_add();
	if mp_grid_path(mapa,camino,x,y,0,0,1){
		path_start(camino,3,3,0);
	}
	}
	with (astuto){

mapa = mp_grid_create(0,0, room_width div 16, room_height div 16,16,16);
mp_grid_add_instances(mapa, pared, false);

	camino = path_add();
	if mp_grid_path(mapa,camino,x,y,0,0,1){
		path_start(camino,3,3,0);
	}
	}
	with (agresivo){

mapa = mp_grid_create(0,0, room_width div 16, room_height div 16,16,16);
mp_grid_add_instances(mapa, pared, false);

	camino = path_add();
	if mp_grid_path(mapa,camino,x,y,0,0,1){
		path_start(camino,3,3,0);
	}
	}
	with (tsundere){

mapa = mp_grid_create(0,0, room_width div 16, room_height div 16,16,16);
mp_grid_add_instances(mapa, pared, false);

	camino = path_add();
	if mp_grid_path(mapa,camino,x,y,0,0,1){
		path_start(camino,3,3,0);
	}
	}
}
