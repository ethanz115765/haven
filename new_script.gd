extends RigidBody2D

var speed = 1
var direction
var velocity
var is_grabbed: bool = false 
var mouse_pos = get_global_mouse_position()

func _physics_process(delta: float):
#collision stuff
	var _collision = move_and_collide(direction * speed * delta)
#grabbing stuff
	var direction = get_global_mouse_position()
	if is_grabbed == true:
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO

func _input(event: InputEvent):
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_grabbed = true
		else:
			is_grabbed = false 
