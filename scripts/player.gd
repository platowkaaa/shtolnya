extends CharacterBody3D
 
 
# --- Движение ---
@export var speed: float = 2.0
@export var mouse_sensitivity: float = 0.002
 
# --- Покачивание головы при ходьбе ---
@export var bob_frequency: float = 2.0
@export var bob_amplitude: float = 0.04
 
 
# --- Ноды ---
@onready var head: Node3D = $head
@onready var ray: RayCast3D = $head/RayCast3D
@onready var prompt_label: Label = $CanvasLayer/interact/PromptLabel
 
 
# --- Состояние ---
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var inventory: Array[String] = []
 
var reading: bool = false
var paused: bool = false
 
 
var current_target: Node = null
 
# Служебное для покачивания.
var head_base_y: float = 0.0
var bob_time: float = 0.0
 
 
func _ready() -> void:
 
	process_mode = Node.PROCESS_MODE_ALWAYS
 
	head_base_y = head.position.y
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	prompt_label.visible = false
	
 
 
func is_busy() -> bool:
	return reading or paused
 
 
func set_reading(value: bool) -> void:
	reading = value
	_apply_state()
 
 
func set_paused(value: bool) -> void:
	paused = value
	_apply_state()
 
 
func _apply_state() -> void:
	var busy := is_busy()
 
	get_tree().paused = busy
 
	if busy:
		prompt_label.visible = false
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
 
 
func add_item(item: String) -> void:
	if not has_item(item):
		inventory.append(item)
 
 
func has_item(item: String) -> bool:
	return item in inventory
 
 
func remove_item(item: String) -> void:
	inventory.erase(item)
 
 
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		if reading:
			set_reading(false)
		else:
			set_paused(not paused)
		return
 
	if is_busy():
		return
 
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
		head.rotate_x(-event.relative.y * mouse_sensitivity)
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-90.0), deg_to_rad(90.0))
		return
 
	if event.is_action_pressed("interact") and is_instance_valid(current_target):
		current_target.interact(self)
		return
 
 
func _process(delta: float) -> void:
	if is_busy():
		return
 
	_update_target()
	_update_head_bob(delta)
 
 
func _update_target() -> void:
	current_target = _find_target()
 
	if current_target != null:
		prompt_label.text = "[E] %s" % _get_prompt(current_target)
		prompt_label.visible = true
	else:
		prompt_label.visible = false
 
 
func _find_target() -> Node:
	if not ray.is_colliding():
		return null
 
	var obj = ray.get_collider()
	if obj is Node and obj.is_in_group("interactable") and obj.has_method("interact"):
		return obj
 
	return null
 
 
func _get_prompt(obj: Node) -> String:
	if "prompt" in obj:
		return str(obj.prompt)
	return "осмотреть"
 
 
func _update_head_bob(delta: float) -> void:
	var horizontal_speed := Vector2(velocity.x, velocity.z).length()
 
	if is_on_floor() and horizontal_speed > 0.1:
		bob_time += delta * horizontal_speed * bob_frequency
		head.position.y = head_base_y + sin(bob_time) * bob_amplitude
	else:
		head.position.y = lerp(head.position.y, head_base_y, 1.0 - exp(-delta * 8.0))
		bob_time = 0.0
 
 
func _physics_process(delta: float) -> void:
	if is_busy():
		return
 
	if not is_on_floor():
		velocity.y -= gravity * delta
 
	var current_speed := speed
	if Input.is_action_pressed("accelerate"):
		current_speed *= 1.5
 
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y)).normalized()
 
	if direction != Vector3.ZERO:
		velocity.x = direction.x * current_speed
		velocity.z = direction.z * current_speed
	else:
		velocity.x = move_toward(velocity.x, 0.0, speed * 10.0 * delta)
		velocity.z = move_toward(velocity.z, 0.0, speed * 10.0 * delta)
 
	move_and_slide()
