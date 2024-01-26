extends Control

var label: Label

func _ready():
	label = $Label
	update_score()
	connect("coin_collected", self, "_on_Coin_coin_collected")

func update_score():
	label.text = "SCORE: " + str(Global.score)

func _on_Coin_coin_collected():
	Global.score += 1
	update_score()
	print("Global.score:", Global.score)
	print("Global.level:", Global.level)

