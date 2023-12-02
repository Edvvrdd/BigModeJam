extends Node2D

@export var Speed: float = 50.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += Speed * delta
