extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	rotate_x(deg2rad(60 * delta))
	rotate_y(deg2rad(60 * delta))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_points_darkmatter_body_entered(body):
	if body is KinematicBody:
		queue_free()
	pass # Replace with function body.
