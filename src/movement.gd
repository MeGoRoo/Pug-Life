extends TestCube

var speed = 0
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	
func _process(delta):
	if Input.is_action_pressed("jump"):
		for x in range(0, 10):
			translate(Vector3(0, 0.5, 0))
		
	elif Input.is_action_pressed("move_forward"):
		speed = -8
	elif Input.is_action_pressed("move_back"):
		speed = 8
	elif Input.is_action_pressed("move_left"):
		self.rotate_y(-0.0625)
	elif Input.is_action_pressed("move_right"):
		self.rotate_y(0.0625)
	else:
		speed = 0
	translate(Vector3(0,0,delta * speed))
	
	while not self.get_node("RayCast").is_colliding():
		translate(Vector3(0, 0.5, 0))
