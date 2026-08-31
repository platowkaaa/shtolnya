extends StaticBody3D

@export var prompt: String = "повернуть рубильник"
@export var required_item: String = ""
@export var thought_locked: String = "Пусто. Предохранитель выгорел."
@export var thought_on: String = "Гудит. Где-то пошло электричество."

var is_on: bool = false

func interact(player: Node) -> void:
	if is_on:
		return

	if required_item != "" and not player.has_item(required_item):
		if thought_locked != "":
			Story.say(thought_locked)
		return

	if required_item != "":
		player.remove_item(required_item)

	is_on = true
	remove_from_group("interactable")
	GameState.throw_switch()

	if thought_on != "":
		Story.say(thought_on)
