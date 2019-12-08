extends KinematicBody

var speed = 200
var direction = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	pass # Replace with function body.


func _physics_process(delta):
	direction = Vector3(0, 0, 0)
	if Input.is_action_pressed("ui_up"):
		direction.x -= 1 
	if Input.is_action_pressed("ui_down"):
		direction.x += 1 
	if Input.is_action_pressed("ui_right"):
		direction.z -= 1
	if Input.is_action_pressed("ui_left"):
		direction.z += 1  
	direction = direction.normalized()
	direction = direction * speed * delta
	move_and_slide(direction, Vector3(0, 1, 0))
	
	pass