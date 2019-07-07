extends MarginContainer

onready var tween = $Tween

func _display():
	get_node("ColorRect").visible = true