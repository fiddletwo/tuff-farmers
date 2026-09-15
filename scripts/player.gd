extends CharacterBody2D

@export var speed := 100
@export var acceleration := 20
@export var drag := 20

func _physics_process(dt: float) -> void:
    var input := Input.get_vector("left", "right", "up", "down")
    
    if input.length() > 0:
        velocity = VectorUtil.expDecay(velocity, input * speed, acceleration, dt)
    else:
        velocity = VectorUtil.expDecay(velocity, Vector2.ZERO, drag, dt)
    
    move_and_slide()
