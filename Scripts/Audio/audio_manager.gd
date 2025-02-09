extends Node

@onready var player: AudioStreamPlayer = $AudioStreamPlayer

var menu_music = preload("res://Assets/Sounds/Robo_HubWorld_MX_Master.wav")
var level_music = preload("res://Assets/Sounds/Robo_Eólico_MX_Master.wav")

func _ready():
	player.stream = menu_music
	player.play()
	
func _process(delta: float) -> void:
	if player.playing == false:
		player.play()
	pass

func play_music(new_stream: AudioStream):
	if player.stream != new_stream:
		player.stream = new_stream
		player.play()

func set_music_for_scene(scene_name: String):
	if "menu" in scene_name.to_lower():  # Matches "MainMenu", "SettingsMenu", etc.
		play_music(menu_music)
	else:  # Assume it's a level
		play_music(level_music)
