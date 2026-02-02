extends Area2D

var spinSpeed = 0.0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("I'm a wheel")
	

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		if event.keycode == KEY_SPACE:
			#print("Space was pressed and spinning is, " + str(spinning))
			
			spinSpeed = 0.05
			
			#print("now spinning is, " + str(spinning))
			
			await get_tree().create_timer(10).timeout
			
			spinSpeed = 0.0
			#print("Timeout is here and spinning is, " + str(spinning))
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate(spinSpeed)
	
