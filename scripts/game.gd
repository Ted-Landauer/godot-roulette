extends Node2D

var blueChip: = preload("res://scenes/blue_chip.tscn")
#Should have called this Main


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func spawnBlueChip():
	var newBlueChip = blueChip.instantiate()
	var mouse: Vector2 = get_viewport().get_mouse_position()
	
	#newBlueChip.scale = Vector2(1, 1)
	newBlueChip.scale.x = .1
	newBlueChip.scale.y = .1
	#newBlueChip.position.x = (mouse.x - 250) / 2.5
	#newBlueChip.position.y = (mouse.y - 205) / 2.5
	newBlueChip.position = mouse
	#newBlueChip.position.y = mouse.y
	add_child(newBlueChip)
	print("added blue chip")
	print("Mouse Position is..." + str(mouse))
	print("Chip Position without setting is..." + str(newBlueChip.position))
	print("Viewport window size is..." + str(get_viewport().size.x) + ", " + str(get_viewport().size.y))
	#print("Camera Position is..." + str($Camera2D.position))

func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			#print("Space was pressed and spinning is, " + str(spinning))
			## WIP
			#$"ChipsOld/Blue Chip".instance()
			#blueChip.instance()
			print ("Mouse Clicked")
			spawnBlueChip()
			
			#print("now spinning is, " + str(spinning))
			
			
			
			
			#print("Timeout is here and spinning is, " + str(spinning))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
