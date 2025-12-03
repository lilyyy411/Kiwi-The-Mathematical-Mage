extends Area2D

func _ready() -> void:
	$AnimatedSprite2D.animation = "move"
	$AnimatedSprite2D.play()
