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