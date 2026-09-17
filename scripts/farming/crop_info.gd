class_name CropInfo
extends Resource

@export var sprites: Array[Texture]
@export var growth_interval: float
@export var max_stages: int

func _init(p_sprites: Array[Texture] = [], p_growth_interval = 0.2, p_max_stages = 1) -> void:
    sprites = p_sprites
    growth_interval = p_growth_interval
    max_stages = p_max_stages
