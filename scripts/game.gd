extends Node2D
#Should have called this Main

var blueChip: = preload("res://scenes/blue_chip.tscn")
var purpleChip: = preload("res://scenes/purple_chip.tscn")
var yellowChip: = preload("res://scenes/yellow_chip.tscn")

#variable to determine which chip is needed, 0: blue, 1: purple, 2: yellow
var chipColor = 0

var randomSelection = RandomNumberGenerator.new()

var inBettingArea = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func spawnBlueChip():
	var newBlueChip = blueChip.instantiate()
	var mouse: Vector2 = get_viewport().get_mouse_position()
	
	newBlueChip.top_level = true
	newBlueChip.scale.x = .1
	newBlueChip.scale.y = .1
	newBlueChip.position = mouse
	
	add_child(newBlueChip)
	print("added blue chip")
	
func spawnPurpleChip():
	var newPurpleChip = purpleChip.instantiate()
	var mouse: Vector2 = get_viewport().get_mouse_position()
	
	newPurpleChip.top_level = true
	newPurpleChip.scale.x = .1
	newPurpleChip.scale.y = .1
	newPurpleChip.position = mouse
	
	add_child(newPurpleChip)
	print("added purple chip")
	
func spawnYellowChip():
	var newYellowChip = yellowChip.instantiate()
	var mouse: Vector2 = get_viewport().get_mouse_position()
	
	newYellowChip.top_level = true
	newYellowChip.scale.x = .1
	newYellowChip.scale.y = .1
	newYellowChip.position = mouse
	
	add_child(newYellowChip)
	print("added yellow chip")



func checkBettingArea():
	if inBettingArea == true:
		print("in the betting area")
	elif inBettingArea == false:
		print("out of betting area")

func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT and inBettingArea == true:
			print ("Mouse Clicked")
			
			
			
			match chipColor:
				0:
					spawnBlueChip()
				1:
					spawnPurpleChip()
				2:
					spawnYellowChip()
				_:
					print("Something went wrong")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#checkBettingArea()
	pass
	

func _on_purple_chip_pressed() -> void:
	print("Purple Chip Selected")
	chipColor = 1
	

func _on_blue_chip_pressed() -> void:
	print("Blue Chip Selected")
	chipColor = 0
	

func _on_yellow_chip_pressed() -> void:
	print("Yellow Chip Selected")
	chipColor = 2
	


func _on_timer_timeout() -> void:
	print("No more bets!")
	var winningNumber = randomSelection.randi_range(-1, 36)
	if winningNumber == -1:
		print("Winner, 00")
	else:
		print("Winner, " + str(winningNumber))
	



func _on_control_mouse_entered() -> void:
	print("mouse entered")
	inBettingArea = true


func _on_control_mouse_exited() -> void:
	print('mouse exited')
	inBettingArea = false
