// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.savefileName = "savedata.json"

// Lord forgive me for this code
global.flagNames =
[
	"wangGreeted",
]
global.flagValues =
[
	0,
]

global.player = undefined
global.playerData =
{
	svX : 0,
	svY : 0,
	svRoom: 0,
}

function GetFlagData()
{
	for (var _i = 0; _i<array_length(global.flagValues); _i++)
	{
		global.flagValues[_i] = ChatterboxVariableGet(global.flagNames[_i])
	}
}

function SetFlagData()
{
	for (var _i = 0; _i<array_length(global.flagValues); _i++)
	{
		ChatterboxVariableSet(global.flagNames[_i], global.flagValues[_i])
	}
}

function UpdatePlayerData()
{
	with (global.player)
	{
		global.playerData.svX = x
		global.playerData.svY = y
		global.playerData.svRoom = room
	}
}

function Save()
{
	GetFlagData()
		
	// Likely will be relocated when adding saving options in menu
	UpdatePlayerData()
	
	// Combines all the save data structs into one array.
	var _saveArray = array_create(0)
	array_push(_saveArray, global.playerData) // Index 0 etc.
	array_push(_saveArray, global.flagNames) 
	array_push(_saveArray, global.flagValues)
	
	// Converts the array into a JSON string.
	var _jsonSaveArray = json_stringify(_saveArray)
	
	// Creates a buffer with the size of the JSON string to store it in. Unchangeable and alignment of 1 (recommended for strings).
	var _buffer = buffer_create(string_byte_length(_jsonSaveArray) + 1, buffer_fixed, 1)
	
	// Write to the buffer our data which is a string type.
	buffer_write(_buffer, buffer_string, _jsonSaveArray)
	
	// Save the buffer into our save file.
	buffer_save(_buffer, global.savefileName)
	
	// Delete the buffer afterwards. Prevents a "memory leak" which is just data just sitting there without a use.
	buffer_delete(_buffer)
}

// Here, we literally go backwards of the saving process to load
function Load()
{
	if SavefileExists()
	{
		// Load buffer from save file, get the string out of it, delete it
		var _buffer = buffer_load(global.savefileName)
		var _jsonSaveArray = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
	
		// Deconverts JSON string into normal GML array, then sets the save data structs from it
		var _saveArray = json_parse(_jsonSaveArray)
		global.playerData = array_get(_saveArray, 0)
		global.flagNames = array_get(_saveArray, 1)
		global.flagValues = array_get(_saveArray, 2)
		
		SetFlagData()
	}
}

function SavefileExists()
{
	return file_exists(global.savefileName)
}