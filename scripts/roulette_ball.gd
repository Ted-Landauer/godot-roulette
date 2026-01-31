extends CharacterBody2D


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var  i = 0
	while (i < 20):
		position.x += 1 * delta
		position.y += 1 * delta
		rotate(0.005)
		i += 1
