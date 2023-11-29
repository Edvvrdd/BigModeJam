extends CharacterBody2D


@export var movement_speed: float = 300
@export var acceleration: float = 1000

var _x_input_direction: float
var _y_input_direction: float
var _velocity: Vector2

func _process(delta):
	process_x_input()
	process_y_input()


func _physics_process(delta):
	process_x_velocity(delta)
	process_y_velocity(delta)
	move_and_slide()


func process_x_input():
	_x_input_direction = Input.get_axis("move_left", "move_right")


func process_y_input():
	_y_input_direction = Input.get_axis("move_up", "move_down")


func process_x_velocity(delta: float):
	_velocity = velocity
	
	_velocity.x = move_toward(_velocity.x, _x_input_direction * movement_speed, acceleration * delta)
	
	velocity = _velocity.floor()
	
	print(velocity)


func process_y_velocity(delta: float):
	_velocity = velocity
	
	_velocity.y = move_toward(_velocity.y, _y_input_direction * movement_speed, acceleration * delta)
	
	velocity = _velocity.floor()
	
	print(velocity)
