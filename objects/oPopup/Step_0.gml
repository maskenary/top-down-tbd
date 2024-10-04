/// @description Insert description here
// You can write your code in this editor

// When choosing a button, do an action depending on which menu (menuIndex) and which selection (selectionIndex)
if (keyboard_check_released(vk_space) or keyboard_check_released(vk_enter))
{
	script_execute(scriptArray[selectionIndex])
	if menuParent != undefined
	{
		with (menuParent) { menuEnabled = true; }
	}
}
else if (keyboard_check_released(vk_left) or keyboard_check_released(ord("A")))
{
	if (selectionIndex - 1 >= 0) { selectionIndex -= 1; }
}
else if (keyboard_check_released(vk_right) or keyboard_check_released(ord("D")))
{
	if (selectionIndex + 1 < selectionLength) { selectionIndex += 1; }
}
