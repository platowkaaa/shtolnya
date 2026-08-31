extends OmniLight3D

@export var base_energy: float = 0.4     # яркость в спокойном состоянии
@export var flicker_strength: float = 0.4 # насколько сильно гуляет яркость (0.15 = +-15%)
@export var flicker_speed: float = 2.0     # как быстро колеблется пламя
@export var sway_strength: float = 0.012   # смещение источника в метрах

var noise := FastNoiseLite.new()
var base_position: Vector3
var time: float = 0.0


func _ready() -> void:
	base_position = position

	noise.noise_type = FastNoiseLite.TYPE_PERLIN
	noise.frequency = 1.0
	noise.seed = randi()

	light_energy = base_energy


func _process(delta: float) -> void:
	time += delta * flicker_speed

	var n: float = noise.get_noise_1d(time)
	light_energy = base_energy * (1.0 + n * flicker_strength)


	position = base_position + Vector3(noise.get_noise_1d(time + 100.0), noise.get_noise_1d(time + 900.0), 0.0) * sway_strength
