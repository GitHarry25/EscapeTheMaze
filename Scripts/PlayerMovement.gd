extends KinematicBody2D

var speed = 300 # player speed
onready var animation = $Sprite # For easier referencing

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"): # if they go right, change the animation to the one titled "Right"
		velocity.x += 1
		animation.play("Right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		animation.play("Left")
	elif Input.is_action_pressed("ui_down"):
		velocity.y += 1
		animation.play("Down")
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		animation.play("Up")
	else:
		animation.play("StraightIdle")
		
		
	velocity = velocity.normalized() * speed
	

func _physics_process(delta): # movement
	get_input()
	velocity = move_and_slide(velocity)







