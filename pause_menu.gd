extends Control

func _input(event: InputEvent) -> void:
	if event.is_action_pressed('ui_cancel'):
		if get_tree().paused:
			_on_resume_pressed()
		else:
			_on_pause_pressed()

func _set_blur(value: float) -> void:
	$BlurFilter.material.set_shader_parameter('blur', value)

func _on_pause_pressed() -> void:
	get_tree().paused = true
	_set_blur(0.8)
	show()

func _on_resume_pressed() -> void:
	get_tree().paused = false
	_set_blur(0.0)
	hide()

func _on_exit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file('res://main_menu.tscn')
