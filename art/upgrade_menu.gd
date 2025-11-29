extends Control

@onready var is_open: bool = false

func _ready():
	$AnimationPlayer.play("RESET")

func resume():
	is_open = false
	$AnimationPlayer.play_backwards("blur")

func open():
	is_open = true
	$AnimationPlayer.play("blur")

func test_tab():
	if Input.is_action_just_pressed("upgrade") and not is_open:
		open()
	elif Input.is_action_just_pressed("upgrade") and is_open:
		resume()

func _process(delta):
	test_tab()

func _on_close_pressed() -> void:
	resume()

func _on_open_upgrade_pressed() -> void:
	open()
