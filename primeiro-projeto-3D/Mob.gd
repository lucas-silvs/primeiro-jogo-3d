extends KinematicBody
export var min_speed = 10.0
export var max_speed = 18.0

var velocity = Vector3.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _physics_process(_delta):
	move_and_slide(velocity)
	

func initialize(start_position, player_position):
		translation = start_position
		look_at(player_position, Vector3.UP)
		var random_speed = rotate_y(rand_range(-PI / 4.0, PI / 4.0))
		velocity = Vector3.FORWARD * random_speed
		velocity = velocity.rotated(Vector3.UP, rotation.y)
		 
			


# Called when the node enters the scene tree for the first time.
func _on_VisibilityNotifier_screen_exited():
	queue_free()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
