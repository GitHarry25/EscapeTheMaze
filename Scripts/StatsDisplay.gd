extends Control

func _ready(): # final score display
	$Score.text = "FINAL SCORE: " + String(Global.score)
	$Level.text = "YOU REACHED LEVEL: " + String(Global.level)
	



func _on_Quit_pressed():
	get_tree().quit()


func _on_Revive_pressed():
	if Global.score >= 10:
		Global.score -= 10

		if Global.level == 1:
			get_tree().change_scene("res://Scenes/Level1.tscn")
		elif Global.level == 2:
			get_tree().change_scene("res://Scenes/Level2.tscn")
		elif Global.level == 3:
			get_tree().change_scene("res://Scenes/Level3.tscn")
	else:
		$ReviveInfo.modulate = Color(0.8, 0, 0.8, 1)
		yield(get_tree().create_timer(3.0), "timeout")
		$ReviveInfo.modulate = Color(1, 1, 1, 1)
