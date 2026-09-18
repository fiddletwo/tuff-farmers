class_name FarmManager
extends Node2D

var crop_scene: PackedScene = preload("res://scenes/crop.tscn")

var crops: Dictionary[String, Resource] = {
    "corn": preload("res://game/crops/corn.tres")
}

var tile_map: Dictionary[Vector2i, Crop] = {}
@onready var tile_layer: TileMapLayer = $Plantable

func plant_crop(crop_name: String) -> void:
    var crop_info = crops.get(crop_name)
    if not crop_info:
        push_warning("Failed to find crop " + crop_name)
        return
    
    var crop = crop_scene.instantiate()
    add_child(crop)
    crop.initialize(crop_info)

#func till_land(coords: Vector2i) -> void:
    #pass
