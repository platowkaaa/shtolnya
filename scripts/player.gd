extends CharacterBody3D


# --- Движение ---
@export var speed: float = 2.0
@export var mouse_sensitivity: float = 0.002

# --- Покачивание головы при ходьбе ---
@export var bob_frequency: float = 2.0    # частота шага
@export var bob_amplitude: float = 0.04   # размах в метрах


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


# Вызывается запиской: player.set_reading(true) при открытии.
func set_reading(value: bool) -> void:
	reading = value
	_apply_state()


# Вызывается меню паузы.
func set_paused(value: bool) -> void:
	paused = value
	_apply_state()


# Единственное место, где включается пауза и курсор.
# Всё состояние меняется здесь, чтобы не разъезжалось по коду.
func _apply_state() -> void:
	var busy := is_busy()

	# Останавливает весь мир: физику, таймеры, звуки, партиклы.
	# Игрока не касается — у него process_mode = ALWAYS.
	get_tree().paused = busy

	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if busy else Input.MOUSE_MODE_CAPTURED

	if busy:
		prompt_label.visible = false


# =========================================================
#  ИНВЕНТАРЬ
# =========================================================

# Предметы хранятся строками: "fuse", "key".
func add_item(item: String) -> void:
	if not has_item(item):
		inventory.append(item)


func has_item(item: String) -> bool:
	return item in inventory


func remove_item(item: String) -> void:
	inventory.erase(item)


# =========================================================
#  ВВОД (события: приходят ровно один раз)
# =========================================================

func _unhandled_input(event: InputEvent) -> void:
	# Esc обрабатывается всегда, даже на паузе, иначе из неё не выйти.
	if event.is_action_pressed("ui_cancel"):
		if reading:
			set_reading(false)
		else:
			set_paused(not paused)
		return

	if is_busy():
		return

	# Обзор мышью.
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
		head.rotate_x(-event.relative.y * mouse_sensitivity)
		# Не даём свернуть шею: взгляд ограничен ±90 градусов.
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-90.0), deg_to_rad(90.0))
		return

	# Взаимодействие. Здесь, а не в _physics_process:
	# событие приходит один раз, объект не получит двойной вызов.
	if event.is_action_pressed("interact") and current_target != null:
		current_target.interact(self)


# =========================================================
#  КАДР ОТРИСОВКИ: луч, подсказка, покачивание
# =========================================================

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


# Возвращает объект перед игроком, если с ним можно взаимодействовать.
func _find_target() -> Node:
	if not ray.is_colliding():
		return null

	var obj = ray.get_collider()
	if obj is Node and obj.is_in_group("interactable") and obj.has_method("interact"):
		return obj

	return null


# Текст подсказки берём из свойства prompt, если оно есть у объекта.
func _get_prompt(obj: Node) -> String:
	if "prompt" in obj:
		return str(obj.prompt)
	return "осмотреть"


# Покачивание головы. Здесь, а не в физике: это чистая картинка,
# и на быстром мониторе так плавнее.
func _update_head_bob(delta: float) -> void:
	var horizontal_speed := Vector2(velocity.x, velocity.z).length()

	if is_on_floor() and horizontal_speed > 0.1:
		# Чем быстрее идём, тем чаще шаг.
		bob_time += delta * horizontal_speed * bob_frequency
		head.position.y = head_base_y + sin(bob_time) * bob_amplitude
	else:
		# Стоим — плавно возвращаем голову на место.
		head.position.y = lerp(head.position.y, head_base_y, delta * 8.0)
		bob_time = 0.0


# =========================================================
#  ТАКТ ФИЗИКИ: движение
# =========================================================

func _physics_process(delta: float) -> void:
	# Мир на паузе — игрок тоже стоит.
	if is_busy():
		return

	if not is_on_floor():
		velocity.y -= gravity * delta

	# get_vector даёт направление ввода как вектор от -1 до 1.
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	# Переводим направление из системы координат игрока в мировую.
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y)).normalized()

	if direction != Vector3.ZERO:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0.0, speed)
		velocity.z = move_toward(velocity.z, 0.0, speed)

	move_and_slide()
