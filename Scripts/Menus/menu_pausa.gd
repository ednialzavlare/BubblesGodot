extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_regresar_pressed() -> void:
	Engine.time_scale = 1  # Reset time scale before changing scene
	get_tree().change_scene_to_file("res://Scenes/Menus/menu_inicio.tscn")
	pass # Replace with function body.


func _on_salir_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_opciones_pressed() -> void:
	pass # Replace with function body.
