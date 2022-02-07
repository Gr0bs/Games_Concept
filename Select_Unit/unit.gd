extends KinematicBody2D

var selected = false

func select() -> void:
	selected = true
	$selected.visible = true

func unselect() -> void:
	selected = false
	$selected.visible = false
