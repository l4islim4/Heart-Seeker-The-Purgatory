extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$Pontuacao.text = str(Tempoglobal.time_global)
	pass

func _on_tree_entered():
	$Pontuacao.text  += str(Tempoglobal.time_global)
	pass # Replace with function body.


func _on_button_pressed():
	get_tree().change_scene_to_file("res://creditos.tscn")
