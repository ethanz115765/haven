extends RigidBody2D

var speed = 1
var direction: Vector2
var x_velocity: float = 0.0
var is_grabbed: bool = false 

func _physics_process(delta: float):
	var collision = move_and_collide(direction * speed * delta)
	get_global_mouse_position()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and is_grabbed ==true:
		linear_velocity += event.relative * 4
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_grabbed = true
		else:
			is_grabbed = false  
