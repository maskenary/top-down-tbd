// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.savefileName = "savedata.json"

global.npcData = 
{
	wang : 0,
}

global.playerData =
{
	sX : 0,
	sY : 0,
	sRoom: 0,
}

function Save()
{
	// ok idk about this way of doing it, but if its called when were in a popup itll close it and open another one
	ClosePopup() 
	CreatePopup(["Ok", "Ok2"],[ClosePopup, ClosePopup], "Save complete")
	
	// Combines all the save data structs into one array.
	var _saveArray = array_create(0)
	array_push(_saveArray, global.playerData) // 0 index
	array_push(_saveArray, global.npcData) // 1 index etc.
	
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
		global.npcData = array_get(_saveArray, 1)
	}
}

function SavefileExists()
{
	return file_exists(global.savefileName)
}