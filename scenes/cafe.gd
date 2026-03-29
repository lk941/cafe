extends Node2D

@onready var menu = $menu
@export var destination_scene = "res://scenes/table.tscn"


func _on_menu_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file(destination_scene)
