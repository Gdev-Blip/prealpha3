// Draw Event
var _videoData = video_draw(); // procesa el video
var _videoStatus = _videoData[0];

if (_videoStatus == 0) // reproduciendo sin errores
{
    // dibuja el surface que contiene el frame actual del video
    draw_surface(_videoData[1], 50, 50);
}
