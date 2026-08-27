extends Label

@export var show_time: float = 3.0

var _timer: Timer


func _ready() -> void:
	text = ""
	modulate.a = 0.0

	_timer = Timer.new()
	_timer.one_shot = true
	add_child(_timer)
	_timer.timeout.connect(_on_timeout)

	Story.thought.connect(_on_thought)


func _on_thought(new_text: String) -> void:
	text = new_text
	modulate.a = 1.0
	_timer.start(show_time)


func _on_timeout() -> void:
	var tween := create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.6)
