var _videoData = video_draw();
var _videoStatus = _videoData[0];
if (_videoStatus == 0)
{
    var _videoWidth = surface_get_width(_videoData[1]);
    var _videoHeight = surface_get_height(_videoData[1]);
    var _windowWidth = window_get_width();
    var _windowHeight = window_get_height();
    
    var _x = (_windowWidth - _videoWidth) / 2 + 560; // Adicionei 560 pixels à coordenada X
    var _y = (_windowHeight - _videoHeight) / 2;

draw_surface_ext(_videoData[1], _x, _y, 1, 1, 270, c_white, 1);

}