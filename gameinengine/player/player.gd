extends KinematicBody2D


var move = Vector2()
export var speed = 10 
const gravity = 10 

func _physics_process(delta):
	move.y += gravity
	if Input.is_action_pressed("ui_right"):
		move.x = + speed
	elif Input.is_action_pressed("ui_left"):
		move.x = - speed
	else :
		move.x = 0
		
	move_and_slide(move)
		
