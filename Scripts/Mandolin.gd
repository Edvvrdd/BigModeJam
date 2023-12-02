extends Node2D

@onready var stringA: AnimatedSprite2D = $stringA
@onready var triggerArea: Area2D = $stringA/Akey

var AkeyReady: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("move_left") and AkeyReady == true:  #A key
		start_animation_and_collision()
		
		
func _on_akey_area_entered(area):
	print("note entered")
	AkeyReady = true
	
func _on_akey_area_exited(area):
	print("note exited")
	AkeyReady = false


func start_animation_and_collision():
	stringA.play("vibe")
	print("note hit")




func _on_string_a_animation_finished():
	stringA.play("still")
