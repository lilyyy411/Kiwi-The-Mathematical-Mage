extends Control

var _options: Options

func get_music_volume_slider():
	return $Background/MusicVolumeContainer/Slider as HSlider

func get_sound_effects_volume_slider():
	return $Background/SoundEffectsVolumeContainer/Slider as HSlider

func _ready() -> void:
	_options = load('res://options.tres')
	if _options == null:
		_options = Options.new()
		ResourceSaver.save(_options, 'res://options.tres')
	get_music_volume_slider().value = _options.music_volume
	get_sound_effects_volume_slider().value = _options.sound_effects_volume

func _on_save_and_close_button_pressed() -> void:
	_options.music_volume = get_music_volume_slider().value
	_options.sound_effects_volume = get_sound_effects_volume_slider().value
	ResourceSaver.save(_options, 'res://options.tres')
	visible = not visible
