global.hover_id = noone;
if instance_exists(obj_volver) {
	instance_create_layer(obj_volver.x+30,obj_volver.y+10, "Instances", obj_volverspr)	
} else {
	instance_destroy(obj_volverspr)	
}
// En obj_control o similar
global.snd_dano = snd_dano; // o pon `noone` si querés dejarlo vacío
