extends Control

@onready var player_name_button = $LineEdit
@onready var start_game_button = %StartGameButton

var digitou = false

func _ready():
	start_game_button.grab_focus()

func _process(delta):
	pass
	
func _on_line_edit_text_changed(new_text):
	digitou = true
	
func _on_start_game_button_pressed():
	if digitou == true:
		GlobalPlayerInformation.nome = str($LineEdit.text)
		print(GlobalPlayerInformation.nome)
		await LevelTransition.fade_to_black()
		get_tree().change_scene_to_file("res://Levels/level_1.tscn")

		LevelTransition.fade_from_black()


func _on_quit_button_pressed():
	get_tree().quit()
