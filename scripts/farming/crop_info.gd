class_name CropInfo
extends Resource

@export var sprites: Array[Texture]
@export var growth_interval: float

func _init(p_sprites: Array[Texture] = [], p_growth_interval = 0.2) -> void:
    sprites = p_sprites
    growth_interval = p_growth_interval
