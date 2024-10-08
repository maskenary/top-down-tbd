/// @description Insert description here
// You can write your code in this editor

if SavefileExists()
{
	menuArray[0] = ["New Game", "Continue", "Options", "Credits", "Exit"]
}

// Update based on current menu
selectionLength = array_length(menuArray[menuIndex])


// When choosing a button, do an action depending on which menu (menuIndex) and which selection (selectionIndex)
if (keyboard_check_released(vk_space) or keyboard_check_released(vk_enter))
{
	switch (menuIndex)
	{
		// Main Menu
		case 0:
			if SavefileExists()
			{
				switch (selectionIndex)
				{
					// New Game
					case 0:
						SetRoomTarget(rTest, 100, 100)
						Transition("fade")
					break;
					// Continue
					case 1:
						Load()
						SetRoomTarget(global.playerData.svRoom, global.playerData.svX, global.playerData.svY)
						Transition("fade")
					break;
					// Options
					case 2:
						// Switches index to Options Menu
						menuIndex = 1
					break;
					// Credits 
					case 3:
					break;
					// Exit
					case 4:
						game_end()
					break;
				}
			}
			else
			{
				switch (selectionIndex)
				{
					// New Game
					case 0:
						SetRoomTarget(rTest, 100, 100)
						Transition("fade")
					break;
					// Options
					case 1:
						// Switches index to Options Menu
						menuIndex = 1
					break;
					// Credits 
					case 2:
					break;
					// Exit
					case 3:
						game_end()
					break;
				}
			}
		break;
		// Options Menu
		case 1:
			switch (selectionIndex)
			{
				default: show_debug_message("OPTIONS MENU BUTTON SELECTED (TODO)")
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

