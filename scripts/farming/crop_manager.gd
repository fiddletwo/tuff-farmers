class_name CropManager
extends Node2D

var TICK_RATE: float = 20.0

var _current_time: float = 0.0

func _process(dt: float) -> void:
    _current_time += dt
    
    if _current_time >= TICK_RATE:
        _current_time = fmod(_current_time, TICK_RATE)
        
        for crop in get_tree().get_nodes_in_group(Crop.group_name):
            var growth = randf_range(0.12, 0.23)
            crop.current_age += growth
