extends Camera2D

@export var follow_target: Node
@export var follow_strength := 6.0

var pos := Vector2.ZERO:
	set(value):
		pos = value
		position = floor(pos)


func _ready() -> void:
	pos = position


func _physics_process(delta: float) -> void:
	if follow_target:
		pos = lerp(pos, follow_target.position, follow_strength * delta)
