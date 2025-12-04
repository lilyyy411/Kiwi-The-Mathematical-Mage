extends Node

func _on_pause_pressed() -> void:
	print("Pause Pressed")

func _on_spell_1_pressed() -> void:
	print("Casting Spell 1")

func _on_spell_2_pressed() -> void:
	print("Casting Spell 2")

func _on_spell_3_pressed() -> void:
	print("Casting Spell 3")

func _on_spell_4_pressed() -> void:
	print("Casting Spell 4")

func _on_spawn_timer_timeout() -> void:
	var stoatScene: Resource = preload("res://stoat_path_follow.tscn")
	var catScene: Resource = preload("res://cat_path_follow.tscn")
	var dogScene: Resource = preload("res://dog_path_follow.tscn")
	
	$StoatPath.add_child(stoatScene.instantiate())
	$CatPath.add_child(catScene.instantiate())
	$DogPath.add_child(dogScene.instantiate())
