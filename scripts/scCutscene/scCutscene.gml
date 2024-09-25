// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.currentCutscene = undefined

function StartCutscene(_timeline)
{
	if global.currentCutscene = undefined
	{
		global.currentCutscene = instance_create_depth(0,0,0,oCutsceneTimelineHolder)
		with (global.currentCutscene)
		{
			timeline_index = _timeline
			timeline_position = 0;
			timeline_running = true;
		}
		with (oPlayer)
		{
			state = stateLocked
		}
	}
}

function EndCutscene()
{
	if global.currentCutscene != undefined
	{
		with (oPlayer)
		{
			state = stateIdle
			setToPoint()
		}
		with (global.currentCutscene)
		{
			instance_destroy()
		}
		global.currentCutscene = undefined
	}
}

function PauseCutscene()
{
	if global.currentCutscene != undefined
	{
		with (global.currentCutscene)
		{
			timeline_running = false;
		}
	}
}

function ResumeCutscene()
{
	if global.currentCutscene != undefined
	{
		with (global.currentCutscene)
		{
			timeline_running = true;
		}
	}
}

