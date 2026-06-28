extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_opponent_win_body_entered(body: Node2D) -> void:
	print('opponent won')
	$CanvasLayer.player_score += 1
	body.center_pos()


func _on_player_win_body_entered(body: Node2D) -> void:
	print('player_won')
	$CanvasLayer.opponent_score += 1
	body.center_pos()
