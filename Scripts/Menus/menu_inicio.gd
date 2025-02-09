extends Control

func _ready():
	AudioManager.set_music_for_scene(get_tree().current_scene.name)


func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menus/menu_hub_world.tscn")
	#pass # Replace with function body.


func _on_salir_pressed() -> void:
	get_tree().quit()
	#pass # Replace with function body.


func _on_creditos_pressed() -> void:
	pass # Replace with function body.


func _on_opciones_pressed() -> void:
	pass # Replace with function body.
