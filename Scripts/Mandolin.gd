extends Node2D

@onready var stringA: AnimatedSprite2D = $stringA
@onready var triggerArea: Area2D = $stringA/Akey

var AkeyReady: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("move_left") and AkeyReady == true:  #A key
		aStringHit()
		
		
func _on_akey_area_entered(_area):
	AkeyReady = true
	
func _on_akey_area_exited(_area):
	print("note exited")
	AkeyReady = false


func aStringHit():
	stringA.play("vibe")

func _on_string_a_animation_finished():
	stringA.play("still")
