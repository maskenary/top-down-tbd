/// @description Insert description here
// You can write your code in this editor

scribble_font_set_default("fnDialogueSpeaker")
popupIndex = 0;
selectionIndex = 0;

// Set arrays from creator and call setSelectionLength()
popupArray = []
scriptArray = []
selectionLength = 0;
popupTitle = undefined
menuParent = undefined

boxScale = 6
boxSprite = sBlackBoxDialogue
boxWidthScaled = sprite_get_width(boxSprite) * boxScale
boxHeightScaled = sprite_get_height(boxSprite) *boxScale
textHorizontalOffset = 50
textVerticalOffset = 100


function setSelectionLength()
{
	selectionLength = array_length(scriptArray)
}









