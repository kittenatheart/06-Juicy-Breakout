extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var target = get_node("/root/Game/Ball")
	if target:
		var direction = (target.get_position() - get_global_position()).normalized()
		offset = Vector2(direction.x*20, direction.y*20)
	else:
		offset = Vector2(0,0)