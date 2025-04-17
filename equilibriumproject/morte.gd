extends Area2D

var time_elapsed = 0.0  # Tempo total
@onready var label = $"../GUI/Timer/Label"  # Referência para sua Label
@onready var label2 = $"../GUI/fell/Label2"
var is_running = true  # Verifica se o cronômetro está rodando

func _ready():
	# Inicia o cronômetro
	pass

func _process(delta):
	if is_running:
		# Atualiza o cronômetro apenas se estiver rodando
		time_elapsed += delta
		
		# Converte para minutos e segundos
		var minutes = int(time_elapsed) / 60
		var seconds = int(time_elapsed) % 60

		# Atualiza o texto da Label no formato mm:ss
		label.text = "Tempo: %02d:%02d" % [minutes, seconds]

func _on_body_entered(body):
	# Verifica se colidiu com outro objeto
	if body == $"../circle":
		
		is_running = false
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$"../GUI/fell/exitgame".visible = true
		$"../GUI/fell/tryaga".visible = true
		$"../GUI/fell".visible = true
		$"../tringle".visible = false
		$"../plane".visible = false
		label.visible = false
		label2.text = label.text
		# Você pode colocar mais ações aqui, como mudar a cor, tocar um som, etc.
