/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
globalvar mapa;

if global.super == 0{
	asustados = 0;
mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(agresivo){
		camino = path_add();
		if mp_linear_path_object(camino,objPacman.x+32,objPacman.y+32,3,pared){
			path_start(camino,3,3,0);
		}else{
			if global.ale == 1{
				while place_free(global.prtx,global.prty){
			global.prty = random(16);
			global.prtx = random(16);
			global.prty*=64;
			global.prtx*=64;
			}
			alarm_set(5,200);
			global.ale = 0;
			}
			if mp_grid_path(mapa,camino,x+32,y+32,global.prtx+32,global.prty+32,pared){
			path_start(camino,3,3,0);
			}
		}
	
}
}