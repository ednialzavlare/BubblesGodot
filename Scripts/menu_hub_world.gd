extends Control


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_regresar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menus/menu_inicio.tscn")
	#pass # Replace with function body.


func _on_salir_pressed() -> void:
	get_tree().quit()
	# pass # Replace with function body.


func _on_nivel_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Niveles/nivel_1.tscn")
	
	# pass # Replace with function body.
