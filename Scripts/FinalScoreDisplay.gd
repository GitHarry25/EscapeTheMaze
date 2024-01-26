extends Control

func _ready(): # final score display
	$Score.text = "FINAL SCORE: " + String(Global.score)


func _on_Quit_pressed():
	get_tree().quit() # quit game
