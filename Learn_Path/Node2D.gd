extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _unhandled_input(event: InputEvent) -> void:
	if not event is InputEventMouseButton:
		return
	if event.button_index != BUTTON_LEFT or not event.pressed:
		return
	
	var new_path = $Navigation2D.get_simple_path($Navigation2D/AnimatedSprite.global_position, event.global_position)
	$Navigation2D/Line2D.points = new_path
	$Navigation2D/AnimatedSprite.path = new_path
