extends Node

var score = 0 # score
var level = 1 # level (defaulted to 1)

var dead: bool = false # death indicator

func _gameOver(): # death script
	get_tree().change_scene("res://Scenes/GameOverScreen.tscn")
	
