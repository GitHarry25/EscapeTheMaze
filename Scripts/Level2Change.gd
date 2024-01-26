extends Node2D



func _on_LeaveBox_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Scenes/Level3.tscn")
		Global.level = 3
