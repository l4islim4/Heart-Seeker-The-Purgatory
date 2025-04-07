extends CanvasLayer

var janela_aberta = false
@onready var resume_button = %Resume_button

func _ready():
	visible = false
	
		
func _process(delta):
	#if visible == true:
		#resume_button.grab_focus() 
	pass

func _unhandled_input(event):
	if $Timer.is_stopped():
		if event.is_action_pressed("pause") and janela_aberta == false:
			visible = true
			resume_button.grab_focus() 
			LevelTransition.fade_from_black()
			get_tree().paused = true
			
			janela_aberta = true
			
func _on_resume_button_pressed():
	LevelTransition.fade_from_black()
	get_tree().paused = false
	visible = false
	
	janela_aberta = false

func _on_quit_button_pressed():
	get_tree().quit()
	
	janela_aberta = false

func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	
	janela_aberta = false
