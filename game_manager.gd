extends Node

var score_left = -1
var score_right = -1

func _on_left_goal_body_entered(body: Node2D) -> void:
	score_left += 1
	print(score_left)
	$score.text = "Left: " + str(score_left) + " Right: " + str(score_right)


func _on_right_goal_body_entered(body: Node2D) -> void:
	score_right += 1
	print(score_right)
	$score.text = "Left: " + str(score_left) + " Right: " + str(score_right)
