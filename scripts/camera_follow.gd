extends Camera3D

@export var target_path: NodePath
@export var follow_offset: Vector3 = Vector3(0, 8, 10)
@export var smoothing: float = 5.0

var target: Node3D

func _ready() -> void:
	if target_path:
		target = get_node(target_path)

func _process(delta: float) -> void:
	if target:
		var target_position = target.global_position + follow_offset
		global_position = global_position.lerp(target_position, smoothing * delta)
		look_at(target.global_position + Vector3(0, 1, 0), Vector3.UP)
