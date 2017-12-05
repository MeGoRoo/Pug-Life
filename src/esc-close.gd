extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(1)
	
func _process(delta):
	if Input.is_action_pressed("esc"):
		get_tree().quit()
