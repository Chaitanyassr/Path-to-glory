extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	set_process(true)
		
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_just_pressed("ui_end"):
		get_tree().reload_current_scene()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body is RigidBody:
		print("win")
	pass # Replace with function body.
