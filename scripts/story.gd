extends Node

signal thought(text: String)

func say(text: String) -> void:
	thought.emit(text)
