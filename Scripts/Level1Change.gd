extends Node2D



func _on_AreaExit_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Scenes/Level2.tscn")
		Global.level = 2
