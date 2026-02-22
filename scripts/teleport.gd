extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("teleport")
	body.global_position = Vector2(-100, -150)
	body.velocity = Vector2.ZERO
