class_name Crop
extends Node2D

const group_name = "Crop"

var crop_info: CropInfo
var stage: int = 0
var harvestable: bool = false
var growth_progress: float = 0.0 :
    set(value):
        if growth_progress != value:
            growth_progress = value
        
        if growth_progress >= crop_info.growth_interval:
            growth_progress = fmod(growth_progress, crop_info.growth_interval)
            _increment_stage()

@onready var sprite: Sprite2D = $Sprite

func initialize(info: CropInfo) -> void:
    crop_info = info
    sprite.texture = crop_info.sprites[stage]
    
    add_to_group(group_name)

func _increment_stage() -> void:
    if stage < crop_info.max_stages - 1:
        stage += 1
        sprite.texture = crop_info.sprites[stage]
        
        if stage == crop_info.max_stages - 1:
            harvestable = true
