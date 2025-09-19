extends Node2D

@onready var pause_menu = $CanvasLayer/pauseMenu   # 

var game_paused: bool = false

func _ready():
	pause_menu.visible = false

func _input(event):
	if event.is_action_pressed("ui_cancel"): 
		toggle_pause()
	

func resume():
	game_paused = false
	pause_menu.visible = false
	get_tree().paused = false

func settings():
	pass

func sair():
	get_tree().change_scene_to_file("res://main_menu.tscn")


func toggle_pause():
	game_paused = not game_paused  
	pause_menu.visible = game_paused
	
	# Pausa ou retoma a cena
	get_tree().paused = game_paused
	pause_menu.process_mode = Node.PROCESS_MODE_ALWAYS   
