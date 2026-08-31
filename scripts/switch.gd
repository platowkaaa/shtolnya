extends StaticBody3D

@export var prompt: String = "Дернуть рубильник"
@export var thought_text: String = "Гудит. Где-то пошло электричество."

var is_on: bool = false


func interact(_player: Node) -> void:
	if is_on:
		return

	is_on = true

	remove_from_group("interactable")

	GameState.throw_switch()

	if thought_text != "":
		Story.say(thought_text)
