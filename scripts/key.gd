extends StaticBody3D

@export var prompt: String = "подобрать"
@export var item_id: String = "key"
@export var thought_text: String = "О, ключ."


func interact(player: Node) -> void:
	player.add_item(item_id)
	Story.say(thought_text)
	queue_free()
