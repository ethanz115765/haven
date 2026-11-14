extends CharacterBody2D



func _physics_process(delta):
	var input_direaction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direaction * 400
	move_and_slide()


func _on_pickup_area_entered(area):	
	if area.is_in_group("Basketball"):
		area.queue_free()
		$holding.visible = true
		
func _shoot():
	var have_ball = $holding.visible
	if have_ball == true:
		var input_direction = Input.get_action_strength("ui_accept")
		look_at(get_global_mouse_position())
		
		
		
	
		
	
