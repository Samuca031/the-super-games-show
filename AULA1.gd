extends Node

@onready var player = $PRAYER

func _redy():
	player.morri.conect(_resetar)

func _resetar():
	get_tree().reload_current_scene()
	
	
