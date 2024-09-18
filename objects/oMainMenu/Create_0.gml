/// @description Insert description here
// You can write your code in this editor

scribble_font_set_default("fnDialogue")
menuIndex = 0;
selectionIndex = 0;
menuArray[0] = ["Start", "Options", "Credits", "Exit"]
menuArray[1] = ["temp1", "temp2", "temp3", "temp4"]
selectionLength = array_length(menuArray[menuIndex])

function menu()
{
	if (keyboard_check_released(vk_space) or keyboard_check_released(vk_enter))
	{
		// TODO functionality
		switch (menuIndex)
		{
			// Start
			case 0:
			break;
			// Options
			case 1:
			break;
			// Credits 
			case 2:
			break;
			// Exit
			case 3:
			break;
		}
	}
	else if (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")))
	{
		if (selectionIndex - 1 >= 0) { selectionIndex -= 1; }
	}
	else if (keyboard_check_released(vk_down) or keyboard_check_released(ord("S")))
	{
		if (selectionIndex + 1 < selectionLength) { selectionIndex += 1; }
	}
}







