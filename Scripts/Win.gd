extends Node2D

var balloon = load("res://Scenes/Balloons.tscn")

func _ready():
	var b = balloon.instance()
	get_node("/root/Win/Node2D").add_child(b)
	b.emitting = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")
