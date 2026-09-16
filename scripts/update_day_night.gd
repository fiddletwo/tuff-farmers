extends CanvasModulate

@export var TRANSITION_TIME: float = 2.0
var DAY_COLOR := Color.WHITE
var NIGHT_COLOR := Color("8668c1ff")

func _ready() -> void:
    DayNightCycle.update.connect(_on_update)
    
func _on_update(isDay: bool) -> void:
    var tween := create_tween()
    
    if isDay:
        tween.tween_property(self, "color", DAY_COLOR, TRANSITION_TIME)
    else:
        tween.tween_property(self, "color", NIGHT_COLOR, TRANSITION_TIME)
