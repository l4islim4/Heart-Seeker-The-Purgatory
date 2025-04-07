extends Control

@onready var start_game_button = %StartButton


func _ready():
	RenderingServer.set_default_clear_color(Color.LIGHT_SLATE_GRAY)
	start_game_button.grab_focus()


func _on_start_game_button_pressed():
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://player_name.tscn")
	
	LevelTransition.fade_from_black()

func _on_quit_button_pressed():
	get_tree().quit()
