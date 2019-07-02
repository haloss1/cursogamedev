/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(64,64) {
   
   direction = 0;
   speed = 6;
}

if keyboard_check(vk_left)  && place_free(x-1,y) && place_snapped(64,64){

   direction = 180;
   speed = 6;
}

if keyboard_check(vk_up)  && place_free(x,y-1) && place_snapped(64,64){

   direction = 90;
   speed = 6;
}

if keyboard_check(vk_down)  && place_free(x,y+1) && place_snapped(64,64){
   direction = 270;
   speed = 6;
}