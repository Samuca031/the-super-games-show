extends Area2D

@onready var prayer = $"../PRAYER"


func _on_body_entered(body):
	if body.name == "PRAYER":
		print ("encostou")
		prayer._levoudano()
	
