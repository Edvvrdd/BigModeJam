extends Node

@onready var OptionsPanel = $"." 
@onready var sfxSample = $sfxSample
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


func _on_music_volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db(value))

func _on_sf_xvolume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(value))
	

func _on_button_pressed():
	OptionsPanel.visible = !OptionsPanel.visible


func _on_sf_xvolume_drag_ended(value_changed):
	sfxSample.play()

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_P:
			OptionsPanel.visible = !OptionsPanel.visible
