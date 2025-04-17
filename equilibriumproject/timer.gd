extends Node2D  # Ou qualquer nó onde você queira controlar isso

var time_elapsed = 0.0  # Tempo total
@onready var label = $Label  # Substitua com o caminho até sua Label

func _process(delta):
	# Atualiza o tempo total
	time_elapsed += delta
	
	# Converte para minutos e segundos
	var minutes = int(time_elapsed) / 60
	var seconds = int(time_elapsed) % 60

	# Atualiza o texto da Label no formato mm:ss
	label.text = "Tempo: %02d:%02d" % [minutes, seconds]
