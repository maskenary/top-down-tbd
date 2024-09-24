// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.cutsceneInProgress = false;

function StartCutscene(_timeline)
{
	global.cutsceneInProgress = true;
	with (oPlayer)
	{
		state = stateLocked
	}
	timeline_index = _timeline
	timeline_position = 0;
	timeline_running = true;
}

function EndCutscene()
{
	global.cutsceneInProgress = false;
	with (oPlayer)
	{
		state = stateIdle
		resetLockedSettings()
	}
	timeline_index = -1
	timeline_position = 0;
	timeline_running = false
}