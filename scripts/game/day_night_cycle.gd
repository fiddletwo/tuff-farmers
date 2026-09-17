class_name DayNightCycle
extends Node2D

@export var DAY_DURATION: float = 60.0
@export var NIGHT_DURATION: float = 30.0

var is_day := true
var _current_time: float = 0.0

signal update(state: bool)

func _process(dt: float) -> void:
    _current_time += dt
    
    if is_day and _current_time >= DAY_DURATION:
        _current_time = fmod(_current_time, DAY_DURATION)
        is_day = false
        
        update.emit(is_day)
    elif not is_day and _current_time >= NIGHT_DURATION:
        _current_time = fmod(_current_time, NIGHT_DURATION)
        is_day = true
        
        update.emit(is_day)
        
