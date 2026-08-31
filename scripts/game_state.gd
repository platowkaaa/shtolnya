extends Node


signal switch_thrown(count: int)
signal power_restored
const TOTAL_SWITCHES: int = 3

var switches_on: int = 0
var power_on: bool = false


func throw_switch() -> void:
	switches_on += 1
	switch_thrown.emit(switches_on)

	if switches_on >= TOTAL_SWITCHES and not power_on:
		power_on = true
		power_restored.emit()
