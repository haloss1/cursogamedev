/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
globalvar mapa;
	if global.super == 0{
mapa = mp_grid_create(0,0, room_width div 64, room_height div 64,64,64);
mp_grid_add_instances(mapa, pared, false);
with(tsundere){

	if distance_to_object(objPacman) > 2*64  && global.asu == 0{
		camino = path_add();
		if mp_grid_path(mapa,camino,x+32,y+32,(objPacman.x+32),(objPacman.y+32),1){
			path_start(camino,3,3,0);
		}
	}else{
		camino = path_add();
		if mp_grid_path(mapa,camino,x+32,y+32,0,0,1){
			path_start(camino,3,3,0);
			if(global.asu == 0){
			global.asu = 1;
			alarm_set(4,100);
			}
		}
	}
}
}else{
	with(tsundere){
		if(distance_to_point(global.prx,global.pry) < 50){
			global.prx = random(16);
			global.pry = random(16);
		global.prx *= 64;
		global.pry *= 64;
		
		}
	}
		if(place_free(prx,pry)== false){
			if mp_grid_path(mapa,camino,x,y,prx,pry,1){
			}
		}
}