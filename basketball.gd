extends RigidBody2D

var speed = 1
var direction: Vector2
var x_velocity: float = 0.0

func _physics_process(delta: float):
	var collision = move_and_collide(direction * speed * delta)
	get_global_mouse_position()
	
var is_grabbed: bool = false 

func _process(delta: float) -> void:
	if is_grabbed:
		var mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position, mouse_pos, 0.2)
		return
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_grabbed = true
		else:
			is_grabbed = false 
