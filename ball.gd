extends CharacterBody2D

const SPEED := 400

func _ready() -> void:
	center_pos()
	velocity = Vector2(-SPEED, 0) 
	
func _physics_process(delta: float) -> void:
	var col : KinematicCollision2D = move_and_collide(velocity * delta)
	if col:
		var normal := col.get_normal()
		velocity = velocity.bounce(normal)

func center_pos():
	var screen_size = get_viewport_rect().size
	var center_pos = screen_size / 2
	self.position = center_pos
