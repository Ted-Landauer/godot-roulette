extends CharacterBody2D

var i = 20


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position
	
	
	position.x += 1 * delta
	position.y += 1 * delta
	rotate(0.005)
	
