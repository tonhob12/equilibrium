extends Button


func _on_pressed() -> void:
	get_tree().quit()
	DisplayServer.WINDOW_MODE_WINDOWED
