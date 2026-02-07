extends Node2D

#Should have called this Main


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			#print("Space was pressed and spinning is, " + str(spinning))
			## WIP
			#$"ChipsOld/Blue Chip".
			print ("Mouse Clicked")
			
			#print("now spinning is, " + str(spinning))
			
			
			
			
			#print("Timeout is here and spinning is, " + str(spinning))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
