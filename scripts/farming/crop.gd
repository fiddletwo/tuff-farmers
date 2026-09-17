class_name Crop
extends Node2D

const group_name = "Crop"

var crop_info: CropInfo
var harvestable: bool = false
var growth_progress: float = 0.0 :
    set(value):
        if growth_progress != value:
            growth_progress = value

@onready var sprite: Sprite2D = $Sprite

func initialize(info: CropInfo) -> void:
    crop_info = info
    sprite.texture = crop_info.sprites[0]
    
    add_to_group(group_name)
