extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed('ui_up'):
		position.y -= 500 * delta
	if Input.is_action_pressed('ui_down'):
		position.y += 500 * delta
