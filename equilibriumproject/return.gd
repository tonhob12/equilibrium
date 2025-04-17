extends Button

@onready var ret = $"."
@onready var ex = $"../exit"

func _on_pressed() -> void:
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	ret.visible = false
	ex.visible = false
