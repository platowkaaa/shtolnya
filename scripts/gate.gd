extends StaticBody3D

@export var prompt: String = "открыть"
@export var required_item: String = ""
@export var thought_locked: String = "Заперто"
@export var thought_open: String = ""
@export var thought_no_power: String = "НУЖНО ДЕРНУТЬ РЫЧАГ"
@export var required_switches: int = 0
@onready var collision: CollisionShape3D = $CollisionShape3D
@onready var mesh: MeshInstance3D = $MeshInstance3D

var is_open: bool = false


func interact(player: Node) -> void:
	if is_open:
		return

	if required_item != "" and not player.has_item(required_item):
		Story.say(thought_locked)
		return
	
	if GameState.switches_on < required_switches:
		Story.say(thought_no_power)
		return
		
	_open()


func _open() -> void:
	is_open = true
	remove_from_group("interactable")

	mesh.visible = false

	collision.set_deferred("disabled", true)

	if thought_open != "":
		Story.say(thought_open)
