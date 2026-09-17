extends Node2D

@onready var farm_manager: FarmManager = $"../../FarmManager"

func _process(dt: float) -> void:
    var is_interacting = Input.is_action_just_pressed("interact")
    if is_interacting:
        farm_manager.plant_crop("corn")
