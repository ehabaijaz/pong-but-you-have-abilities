extends CanvasLayer

var opponent_score := 0
var player_score := 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$OpponentScore.text = str(opponent_score)
	$PlayerScore.text = str(player_score)
