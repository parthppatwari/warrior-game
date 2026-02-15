extends Node

@onready var score_lable: Label = $ScoreLable


var score = 0

func add_coin():
	score+=1
	if score == 40:
		score_lable.text = "You have Collected all Coins"
		get_tree().reload_current_scene()
	else:
		print(score)
		score_lable.text = "You Collected " + str(score) + " Coins"
