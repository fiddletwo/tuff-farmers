extends Node2D

@export var TRANSITION_TIME: float = 2.0
var DAY_COLOR := Color.WHITE
var NIGHT_COLOR := Color("8668c1ff")

@onready var canvas_modulate = $DayNight

func _on_day_night_cycle_update(isDay: bool) -> void:
    var tween := create_tween()

    if isDay:
        tween.tween_property(canvas_modulate, "color", DAY_COLOR, TRANSITION_TIME)
    else:
        tween.tween_property(canvas_modulate, "color", NIGHT_COLOR, TRANSITION_TIME)
