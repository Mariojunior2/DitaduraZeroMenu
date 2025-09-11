extends Control

@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $Options
@onready var titulo: VBoxContainer = $Panel/Titulo


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	titulo. visible = true
	main_buttons. visible = false
	options. visible = false



func _process(delta: float) -> void:
	pass
	


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://word_1.tscn")

func _on_settings_back_pressed() -> void:
	main_buttons. visible = true
	options. visible = false


func _on_settings_pressed() -> void:
	print("Configurações")
	main_buttons. visible = false
	options. visible = true
	


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_titulo_input(event: InputEvent) -> void:
	titulo. visible = false
	main_buttons. visible = true
	options. visible = false
