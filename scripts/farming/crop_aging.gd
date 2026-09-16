class_name CropAging
extends Node

signal age_changed(new_age: float, last_age: float)

@export var age_threshold: float = 0.2
@export var current_age: float = 0.0 :
    set(value):
        if current_age != value:
            var last_age = current_age
            current_age = value
            age_changed.emit(current_age, last_age)
            
const group_name: String = "CropAging"

func _ready() -> void:
    add_to_group(group_name)
