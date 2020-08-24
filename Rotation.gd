extends Spatial

const ROT_SPEED := 0.4

func _ready():
	var test_scene = load("res://Scene_Setup.gltf").instance()
	add_child(test_scene)

func _process(delta):
	rotation.y += delta * ROT_SPEED
