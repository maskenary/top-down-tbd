/// @description Insert description here
// You can write your code in this editor

if ChatterboxIsStopped(chatterbox)
{
	show_debug_message("STOPPED DRAWING")
}
else
{
	/*
	var _i = 0;
	repeat(ChatterboxGetContentCount(chatterbox))
	{
		var _string = ChatterboxGetContent(chatterbox, _i);
		draw_text(viewWidth/2, viewWidth/2, _string);
		++_i;
	}
	*/
	draw_text(0, 0, ChatterboxGetContent(chatterbox, 0));
}