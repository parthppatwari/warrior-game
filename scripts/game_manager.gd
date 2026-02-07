extends Node

@onready var score_lable: Label = $ScoreLable


var score = 0

func add_coin():
	score+=1
	score_lable.text = "you have collected " + str(score) + " coins"
	
