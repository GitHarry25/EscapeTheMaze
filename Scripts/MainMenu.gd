extends Control



func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")
 





func _on_Quit_pressed():
	get_tree().quit()




func _on_Instruction_pressed():
	get_tree().change_scene("res://Scenes/Instructions.tscn")


func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
