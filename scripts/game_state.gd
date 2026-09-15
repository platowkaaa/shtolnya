extends Node


signal switch_thrown(count: int) #сигнал ждёт счётчика 0/3 на экране
signal power_restored
signal time_is_up
const TOTAL_SWITCHES: int = 3
const ESCAPE_TIME: float = 10.0
var time_left: float 
var escape_running: bool = false


var switches_on: int = 0
var power_on: bool = false


func throw_switch() -> void:
	switches_on += 1
	switch_thrown.emit(switches_on)
	

	if switches_on >= TOTAL_SWITCHES and not power_on:
		power_on = true
		time_left = ESCAPE_TIME
		escape_running = true
		power_restored.emit()

#зовётся перед перезагрузкой сцены; кнопка «начать заново»
func reset() -> void: 
	switches_on = 0
	power_on = false
	escape_running = false
	time_left = ESCAPE_TIME

func _process(delta: float) -> void:
	if not escape_running:
		return
	time_left -= delta 
	if time_left <= 0:
		escape_running = false
		time_is_up.emit()
