extends VSlider

signal slider_changed(new_value, not_draging)

func _process(_delta: float) -> void:
	slider_changed.emit((120 - value) / 1.6, is_not_dragging)

var is_not_dragging = true

func _on_drag_started():
	print("test 1")
	is_not_dragging = false

func _on_drag_ended(_value_changed):
	print("test 2")
	is_not_dragging = true
