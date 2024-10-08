// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.currentPopup = undefined

// Pass in x, y, names of options, and script names for those options in the same order
function CreatePopup(_popupArray, _scriptArray, _popupTitle, _menuParent = undefined){
	global.currentPopup = instance_create_depth(0, 0, -100, oPopup)
	with (global.currentPopup)
	{
		menuParent = _menuParent
		popupArray = _popupArray
		scriptArray = _scriptArray
		popupTitle = _popupTitle
		setSelectionLength()
	}
}

function ClosePopup()
{
	if global.currentPopup != undefined
	{
		with (oPopup) { instance_destroy(self) }
	}
	global.currentPopup = undefined
}

function PopupSave() { Save(); ClosePopup(); }

function SaveAndClose() { Save(); game_end(); }

function CloseGame() { game_end(); }

function ReturnToMenu() { ClosePopup(); SetRoomTarget(rMainMenu, 0, 0); Transition("fade"); }

function SaveAndReturnToMenu() { ClosePopup(); Save(); ReturnToMenu(); }

