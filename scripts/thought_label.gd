extends Label

@export var show_time: float = 3.0

var _timer: Timer
var tween : Tween


func _ready() -> void:
	text = ""
	modulate.a = 0.0

	_timer = Timer.new()
	_timer.one_shot = true
	add_child(_timer)
	_timer.timeout.connect(_on_timeout)

	Story.thought.connect(_on_thought)


func _on_thought(new_text: String) -> void:
	if tween and tween.is_valid():
		tween.kill()
	text = new_text
	modulate.a = 1.0
	_timer.start(show_time)


func _on_timeout() -> void:
	tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.6)
