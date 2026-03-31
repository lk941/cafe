extends Node2D

@onready var card = $foryoucard
@onready var menu = $menucontents


func _on_card_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		card.visible = true


func _on_background_gui_input(event: InputEvent) -> void:
	card.visible = false


func _on_menu_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		menu.visible = true


func _on_menucontents_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		menu.visible = false


func _on_button_a_pressed() -> void:
	var user_input = $menucontents/content/ButtonA.text
	JavaScriptBridge.eval("""
        sendToTelegram('%s');
	""" % user_input)


func _on_button_b_pressed() -> void:
	var user_input = $menucontents/content/ButtonB.text
	JavaScriptBridge.eval("""
        sendToTelegram('%s');
	""" % user_input)
