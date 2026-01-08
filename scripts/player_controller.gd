extends CharacterBody3D

# Movement parameters
@export var speed: float = 5.0
@export var acceleration: float = 10.0
@export var friction: float = 10.0
@export var gravity: float = 20.0

var animation_player: AnimationPlayer

func _ready() -> void:
	# Find the AnimationPlayer in the KnightCharacter scene
	animation_player = find_animation_player($KnightCharacter)

	if animation_player:
		# Start with idle animation
		animation_player.play("HumanArmature|Idle")
	else:
		push_error("AnimationPlayer not found in KnightCharacter!")

func find_animation_player(node: Node) -> AnimationPlayer:
	if node is AnimationPlayer:
		return node
	for child in node.get_children():
		var result = find_animation_player(child)
		if result:
			return result
	return null

func _physics_process(delta: float) -> void:
	# Apply gravity
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Get input direction
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction := Vector3(input_dir.x, 0, input_dir.y).normalized()

	# Apply movement
	if direction:
		# Accelerate towards target velocity
		velocity.x = move_toward(velocity.x, direction.x * speed, acceleration * delta)
		velocity.z = move_toward(velocity.z, direction.z * speed, acceleration * delta)

		# Rotate character to face movement direction (add PI to flip 180 degrees)
		var target_rotation = atan2(-direction.x, -direction.z) + PI
		rotation.y = lerp_angle(rotation.y, target_rotation, 20.0 * delta)

		# Play walk animation
		if animation_player and animation_player.current_animation != "HumanArmature|Walking":
			animation_player.play("HumanArmature|Walking")
	else:
		# Apply friction when not moving
		velocity.x = move_toward(velocity.x, 0, friction * delta)
		velocity.z = move_toward(velocity.z, 0, friction * delta)

		# Play idle animation when not moving
		if animation_player and animation_player.current_animation != "HumanArmature|Idle":
			animation_player.play("HumanArmature|Idle")

	move_and_slide()
