extends CharacterBody3D

@export var camera_speed : float = 15.0 # m/s
@export var camera_rotation_speed : float = PI * 2.0/3.0 # rad
@export var camera_zoom_speed : float = 2.0 # m/s
@export var camera_zoom_min : float = 2.0 # m
@export var camera_zoom_max : float = 20.0 # m

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir := Input.get_vector(
		"camera_move_left",
		"camera_move_right",
		"camera_move_forward",
		"camera_move_back"
	)
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * camera_speed
		velocity.z = direction.z * camera_speed
	else:
		velocity.x = move_toward(velocity.x, 0, camera_speed)
		velocity.z = move_toward(velocity.z, 0, camera_speed)

	var input_rot = Input.get_axis(
		"camera_rotation_clockwise",
		"camera_rotation_counterclockwise"
	)
	if input_rot:
		rotate_y(input_rot * camera_rotation_speed * delta)

	move_and_slide()
