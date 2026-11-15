extends Area2D

var is_grabbed: bool = false 

func _process(delta: float) -> void:
	if is_grabbed:
		var mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position, mouse_pos, 0.2)
