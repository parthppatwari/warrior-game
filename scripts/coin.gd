extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


var coin_count = 0

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_coin()
	animation_player.play("pickup")
