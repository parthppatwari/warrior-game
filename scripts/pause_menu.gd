extends Control
@onready var animation_player: AnimationPlayer = $AnimationPlayer
func _ready() -> void:
	animation_player.play("RESET")
func resume():
	#animation_player.play("RESET")
	get_tree().paused = false
	
func pause():
	#animation_player.play("pause")
	get_tree().paused = true
	
func testEsc():
	print("testEsc called")
	if Input.is_action_just_pressed("pause") and !get_tree().paused:
		print("4444444444444444444444444444444")
		get_tree().paused = true
	if Input.is_action_just_pressed("pause") and get_tree().paused:
		resume()


func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	get_tree().quit()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		print("game paused")
	testEsc()
