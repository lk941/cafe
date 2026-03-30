extends Node2D

@onready var card = $background


func _on_card_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	card.visible = true


func _on_background_gui_input(event: InputEvent) -> void:
	card.visible = false
