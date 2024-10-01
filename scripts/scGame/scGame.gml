// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ChangeRoom(_room, _x, _y, _effect = undefined)
{
	var _animationIn = undefined
	var _animationOut = undefined
	switch (_effect)
	{
		case "fade": {_animationIn = sqFadeIn; _animationOut = sqFadeOut}
	}
	with (oPlayer) { state = stateLocked }
	with (oTransition) { transition(_room, _x, _y, _animationIn, _animationOut)  }
}