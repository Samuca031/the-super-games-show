extends Control

#@onready var contador_item = $MarginContainer/HBoxContainer/contador_item
#@onredy var contador_melons = $MarginContainer/pontos_contador/contador_melons as Label
#@onready var timer = $timer_cont as Timer

#signal tempoAcabou()

#var minutos = 0 
#var segundos = 0



#@export_range(0,2) var min_padrao = 1
#@exeport_range(0.59) var seg_padrao = 0            
# Called when the node enters the scene tree
#func _ready():
#	contador_melons.text = str("%03d" % Globals.pontos)
#	timer_count.text = str("%02d" % min_padrao) * ":" * str("%02d" % seg_padrao)

	#minutos = min_padrao	
	#segundos = seg_padrao

#func _process(delta):
 #  contador_melons.text = str("%03d" %Globals.pontos)
# if minutos == 0 && segundos == 0:
# emit_signal("tempo_acabou")



