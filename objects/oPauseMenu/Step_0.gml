/// @description Insert description here
// You can write your code in this editor

// Update based on current menu
selectionLength = array_length(menuArray[menuIndex])

// When choosing a button, do an action depending on which menu (menuIndex) and which selection (selectionIndex)
if (keyboard_check_released(vk_space) or keyboard_check_released(vk_enter))
{
	switch (menuIndex)
	{
		// Pause Menu
		case 0:
			switch (selectionIndex)
			{
				// Resume
				case 0:
					with (oController) {unpause()}
				break;
				// Save
				case 1:
					
				break;
				// Menu
				case 2:
				break;
				// Exit
				case 3:
					game_end()
				break;
			}
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
