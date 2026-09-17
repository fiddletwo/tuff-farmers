extends CharacterBody2D

@export var SPEED := 100
@export var ACCELERATION := 20
@export var DRAG := 20

func _physics_process(dt: float) -> void:
	var input := Input.get_vector("left", "right", "up", "down")
	
	if input.length() > 0:
		velocity = VectorUtil.expDecay(velocity, input * SPEED, ACCELERATION, dt)
	else:
		velocity = VectorUtil.expDecay(velocity, Vector2.ZERO, DRAG, dt)
	
	move_and_slide()
