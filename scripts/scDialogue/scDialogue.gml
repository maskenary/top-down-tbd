// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChatterboxUpdate(_chatterbox)
{
	text = ChatterboxGetContent(_chatterbox, 0)
	node = ChatterboxGetCurrent(_chatterbox)
}

// Create an oDialogue according to parameters
function StartDialogue(_node, _file)
{
	with (oPlayer) {state = stateLocked}
	with (instance_create_depth(0,0,0,oDialogue))
	{
		viewWidth = view_wport[0]
		viewHeight = view_hport[0]
		ChatterboxLoadFromFile(_file);
		chatterbox = ChatterboxCreate();
		ChatterboxJump(chatterbox, _node) // Found in datafiles folder
	}
}

function GetSpeakerPortrait(_speaker, _portrait)
{
	switch (_speaker)
	{
		case "Player":
		{
			return sTransparent;
		}
		break;
		case "Mr. Wang":
			switch (_portrait)
			{
				case "Eyebrow": return sWangEyebrow;
				case "Smile": return sWangSmile;
				default: return sWangNeutral;
			}
		break;
	}
	return sTransparent;
}

function StartDialoguePopup(_content, _speaker = undefined)
{
	_speaker = _speaker
	with (oPlayer) {state = stateLocked}

	with (instance_create_depth(0,0,0,oDialoguePopup))
	{
		content = _content
		speaker = _speaker
	}
}


function PrintSpeaker(_speaker, _x, _y, _xOffset = 0, _yOffset = 0)
{
	var _speakerScribble = scribble("[fnDialogueSpeaker]"+ _speaker)
	_speakerScribble.align(fa_center, fa_top)
	_speakerScribble.draw(_x + _xOffset, _y - _yOffset)
}


function PrintContent(_content, _wrapWidth, _x, _y, _xOffset = 0, _yOffset = 0, _typist = undefined)
{
	var _contentScribble = scribble("[fnDialogueContent]"+_content)
	var _contentHeight = string_height_scribble_ext(_content, _wrapWidth)
	_contentScribble.align(fa_center, fa_top)
	_contentScribble.wrap(_wrapWidth)
	if _typist != undefined { _contentScribble.draw(_x + _xOffset, _y - _yOffset, _typist) }
	else { _contentScribble.draw(_x + _xOffset, _y - _yOffset) }
}


function PrintArrow(_x, _y, _xOffset = 0, _yOffset = 0)
{
	var _arrowScribble = scribble("^")
	_arrowScribble.align(fa_center, fa_middle)
	_arrowScribble.transform(0.5, -0.5, 0)
	_arrowScribble.draw(_x + _xOffset, _y - _yOffset)
}

