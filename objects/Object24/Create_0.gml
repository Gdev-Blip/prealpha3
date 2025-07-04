// Create Event
video = video_open("test.mp4");
// puede ser una URL también
// esto empieza inmediatamente el video "reproduciéndose" en memoria
// escucharás el audio, etc. pero para dibujar los frames actuales,
// debes hacerlo manualmente.
video_enable_loop(false)