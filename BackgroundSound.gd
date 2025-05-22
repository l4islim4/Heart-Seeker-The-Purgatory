extends Node2D

@onready var player = "res://player.tscn"

func _on_background_fases_finished():
	$BackgroundFases.play()

func _on_background_fases_script_changed():
	if player.current_scene("res://level_transition.tscn") or player.current_scene("res://level_completed.tscn") or player.current_scene("res://pause_menu.tscn"):
		$BackgroundFases.play()
		$BackgroundFases.volume_db(2)
	else:
		$BackgroundFases.play()
		$BackgroundFases.volume_db(6)
