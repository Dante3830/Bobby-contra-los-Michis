extends CharacterBody2D

var move_speed = 200
var move_acceleration = 2.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var move_dir := Input.get_vector("Left", "Right", "Up", "Down")
	velocity = lerp(velocity, move_dir * move_speed, delta * move_acceleration)

	move_and_slide()
