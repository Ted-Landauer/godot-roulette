extends Area2D


#var betTimer = get_tree().create_timer(30).timeout



var spinning = false
var spinStop
var gameEnd = false






# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("I'm a wheel")
	


func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		if event.keycode == KEY_SPACE:
			print("Space was pressed and spinning is, " + str(spinning))
			spinning = true
			print("now spinning is, " + str(spinning))
			
			await get_tree().create_timer(10).timeout
			spinning = false
			print("Timeout is here and spinning is, " + str(spinning))
			
			#$Timer.start()
			#print($Timer.time_left())

func spinWheel():
	while (spinning == true):
		print("I'm spinning!")
		rotate(0.05)
	
			
			
			
			
#func _on_timer_timeout():
	#timer.timeout.connect(_on_timer_timeout())
	

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	spinWheel()
	
	#while (gameEnd == false):
		#spinStart = randi_range(0, 5)
		#spinStop = randi_range(0, 5)
		#if spinStart == spinStop:
			#gameEnd == true
		#position.x += 1 * delta
		#position.y += 1 * delta
		#rotate(0.05)
		
		#print("this is spinStart and spinStop " + str(spinStart) + ", " + str(spinStop))
