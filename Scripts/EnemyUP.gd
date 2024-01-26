extends KinematicBody2D

var speed = 100
var direction = 1
var velocity = Vector2()

func _physics_process(delta):
	if is_on_wall():
		direction = direction * -1
	#	$AnimatedSprite.flip_v = not $AnimatedSprite.flip_v
	velocity.y = speed * direction
	
	move_and_slide(velocity, Vector2.RIGHT)

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Global.dead = true
		Global._gameOver()
