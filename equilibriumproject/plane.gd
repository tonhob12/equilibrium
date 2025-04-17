extends RigidBody2D
@onready var ret = $"../GUI/return"
@onready var ex = $"../GUI/exit"
@onready var fell = $"../GUI/fell"
var torque_strength = 200.0

func _ready():
	# Captura o cursor do mouse
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		# Gira o corpo com base no movimento do mouse
		apply_torque_impulse(event.relative.x * torque_strength)

func _unhandled_input(event):
	if event is InputEventKey and fell.visible == false and event.pressed and event.keycode == KEY_ESCAPE:
		# Libera o mouse ao apertar ESC
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused = true  # Pausa o jogo
		ret.visible = true
		ex.visible = true
		
