/// @description Insert description here
// You can write your code in this editor


if keyboard_check_released(vk_escape) and room != rMainMenu
{
	if global.paused = false
	{
		pause()
	}
	else if global.paused = true and oPauseMenu.menuEnabled == true
	{
		unpause()
	}
}
