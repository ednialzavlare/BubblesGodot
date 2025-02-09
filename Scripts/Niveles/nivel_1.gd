extends Node2D

@onready var menu_pausa = $Player/Camera2D2/MenuPausa

var pausado = false

# Called when the node enters the scene tree for the first time.
func _ready():
	AudioManager.set_music_for_scene(get_tree().current_scene.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pausa"):
		menuPausa()

func menuPausa():
	if pausado:
		menu_pausa.hide()
		reset_game_state()
	else:
		menu_pausa.show()
		Engine.time_scale = 0
		pausado = true

func reset_game_state():
	Engine.time_scale = 1
	pausado = false
