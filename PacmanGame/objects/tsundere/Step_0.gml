/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
globalvar mapa;
	if global.super == 0{
mapa = mp_grid_create(0,0, room_width div 16, room_height div 16,16,16);
mp_grid_add_instances(mapa, pared, false);
with(tsundere){

	if distance_to_object(objPacman) > 2*64  && global.asu == 0{
		camino = path_add();
		if mp_grid_path(mapa,camino,x,y,(objPacman.x),(objPacman.y),1){
			path_start(camino,3,3,0);
		}
	}else{
		camino = path_add();
		if mp_grid_path(mapa,camino,x,y,0,0,1){
			path_start(camino,3,3,0);
			if(global.asu == 0){
			global.asu = 1;
			alarm_set(0,100);
			}
		}
	}
}
}