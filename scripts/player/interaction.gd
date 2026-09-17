extends Node2D

func _process(dt: float) -> void:
    var is_interacting = Input.is_action_just_pressed("interact")
    if is_interacting:
        print("interact")
