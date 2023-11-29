extends Node


var Instrument_name: String = "Unnamed Instrument"
var volume: float = 1.0

func _init(instrument_name: String):
	Instrument_name = instrument_name

func play_note(note: String):
	print(Instrument_name + " is playing note: " + note)

func stop_playing():
	print(Instrument_name + " stopped playing")
