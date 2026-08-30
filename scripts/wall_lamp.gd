extends StaticBody3D

@export var prompt: String = "зажечь"
@export var thought_text: String = ""
@onready var light: OmniLight3D = $OmniLight3D

var is_lit: bool = false


func _ready() -> void:
	light.visible = false


func interact(_player: Node) -> void:
	if is_lit:
		return

	is_lit = true
	light.visible = true

	remove_from_group("interactable")

	if thought_text != "":
		Story.say(thought_text)
