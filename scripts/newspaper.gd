extends Control

@export var headline_escaped: String = "OLD WORKINGS SEALED"
@export_multiline var body_escaped: String = ""
@export var headline_lost: String = "SURVEYOR MISSING AT THE OLD PIT"
@export_multiline var body_lost: String = ""

@onready var headline: Label = $paper/MarginContainer/VBoxContainer/Headline
@onready var body: Label = $paper/MarginContainer/VBoxContainer/Body


func _ready() -> void:
	visible = false
	$paper/MarginContainer/VBoxContainer/RestartButton.pressed.connect(_on_restart_pressed)

func show_ending(escaped: bool) -> void:
	if escaped:
		headline.text = headline_escaped
		body.text = body_escaped
	else:
		headline.text = headline_lost
		body.text = body_lost

	visible = true


func _on_restart_pressed() -> void:
	GameState.reset()
	get_tree().paused = false
	get_tree().reload_current_scene()
