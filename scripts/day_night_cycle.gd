extends Node

@export var DAY_DURATION: float = 60.0
@export var NIGHT_DURATION: float = 30.0

var currentTime: float = 0.0
var isDay := true

signal day_night_cycle(state: bool)

func _process(dt: float) -> void:
    currentTime += dt
    
    if isDay and currentTime >= DAY_DURATION:
        currentTime = fmod(currentTime, DAY_DURATION)
        isDay = false
        
        day_night_cycle.emit(isDay)
    elif not isDay and currentTime >= NIGHT_DURATION:
        currentTime = fmod(currentTime, NIGHT_DURATION)
        isDay = true
        
        day_night_cycle.emit(isDay)
        
