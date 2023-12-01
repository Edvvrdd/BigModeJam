extends Node


var instrument_name: String = "Unnamed Instrument"
var keys = [] # Array to store the keys for the instrument

func _init(name: String, keys_array):
	instrument_name = name
	keys = keys_array
	set_process_input(true)

func _input(event):
	if event is InputEventKey and event.is_pressed():
		for i in range(keys.size()):
			if event.scancode == keys[i]:
				play_note(i)

func play_note(note_index: int):
	print(instrument_name + " plays note number: " + str(note_index))
	# This method will be overridden in child classes
