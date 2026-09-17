class_name DayNightCycle
extends Node2D

var DAY_DURATION: float = 60.0
var NIGHT_DURATION: float = 30.0

var _current_time: float = 0.0
var _is_day := true

signal update(state: bool)

func _process(dt: float) -> void:
    _current_time += dt
    
    if _is_day and _current_time >= DAY_DURATION:
        _current_time = fmod(_current_time, DAY_DURATION)
        _is_day = false
        
        update.emit(_is_day)
    elif not _is_day and _current_time >= NIGHT_DURATION:
        _current_time = fmod(_current_time, NIGHT_DURATION)
        _is_day = true
        
        update.emit(_is_day)
        
