extends Spatial

const ROT_SPEED := 0.4

var animation_player = null
var animation_list : Dictionary = {}

func _ready():
	var test_scene = load("res://Scene_Setup.gltf").instance()
	add_child(test_scene)
	
	for c in test_scene.get_children():
		if c is AnimationPlayer:
			animation_player = c
	
	if animation_player == null:
		return
	
	for animation_name in animation_player.get_animation_list():
		var animation : Animation = animation_player.get_animation(animation_name)
		animation_list[animation_name] = animation
		animation.set_loop(true)
	
	print (str(animation_list))
	
	if animation_list.size() > 0:
		animation_player.play(animation_list.keys()[0])
	

func _process(delta):
	rotation.y += delta * ROT_SPEED
