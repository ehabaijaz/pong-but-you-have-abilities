extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _process(delta: float) -> void:
	if Input.is_action_pressed('player_up'):
		position.y -= 500 * delta
	if Input.is_action_pressed('player_down'):
		position.y += 500 * delta
