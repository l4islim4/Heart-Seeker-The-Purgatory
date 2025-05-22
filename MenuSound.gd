extends Node2D

func _ready():
	pass
func _process(delta):
	pass


func _on_sound_tree_entered():
	$Sound.play()
