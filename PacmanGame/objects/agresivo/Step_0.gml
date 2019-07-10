/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
globalvar mapa;
globalvar asustados;

if global.super == 0{
	asustados = 0;
mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(agresivo){
	if(global.asustados == 0){
		camino = path_add();
		if mp_linear_path_object(camino,objPacman.x+32,objPacman.y+32,3,pared){
			path_start(camino,3,3,0);
		}else{
			if mp_grid_path(mapa,camino,x+32,y+32,0,0,pared){
			path_start(camino,3,3,0);
			}
		}
	}else{
		camino = path_add();
	}
}
}