/// STEP EVENT de obj_daño

// --- COLISIÓN CON PLAYER ---
if (place_meeting(x, y, obj_player)) {
    var p = instance_place(x, y, obj_player);

    if (p != noone && p.invul_timer <= 0) {
        // Si esta instancia tiene una variable "daño_personalizado", la usamos
        var dmg = 0;
        if (variable_instance_exists(id, "daño_personalizado")) {
            dmg = danio_personalizado;
        } else if (variable_global_exists("dano_recibido")) {
            dmg = global.dano_recibido;
        } else {
            dmg = 1; // fallback
        }

        p.vida -= dmg;
        p.invul_timer = room_speed * 0.3; // frames de invul

        // Knockback: empujar al player lejos del centro del obj_daño
        var dir = point_direction(x, y, p.x, p.y);
        p.xspd += lengthdir_x(8, dir);
        p.yspd -= 8;

        // Cámara temblor
        p.shake_time = 6;
        p.shake_intensity = 6;

        // Sonido de daño (opcional)
        if (global.snd_dano != noone) {
    var s = audio_play_sound(global.snd_dano, 1, false);
    audio_sound_pitch(s, random_range(0.9, 1.15));
}

    }
}
