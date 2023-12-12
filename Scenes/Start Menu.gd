extends Control

@onready var OptionsPanel = $OptionsPanel
@onready var timer = $Timer
@onready var menuMusic = $AudioStreamPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_option_button_pressed():
	OptionsPanel.visible = true

func _on_start_button_pressed():
	timer.start(2)
	var audioTween = get_tree().create_tween()
	audioTween.tween_property(menuMusic, "volume_db", -80, 2)
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/Main.tscn") # Replace with function body.
