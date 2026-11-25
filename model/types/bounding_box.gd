## Represents a 3D float bounding box.
extends RefCounted
class_name BoundingBox

const SCHEMA = {
	"v_min": ["min", true, TYPE_OBJECT, "Float3"],
	"v_max": ["max", true, TYPE_OBJECT, "Float3"],
}

var v_min: Float3
var v_max: Float3

func _init(p_min: Float3, p_max: Float3) -> void:
	v_min = p_min
	v_max = p_max

## Creates a [AABB] from the internal values.
func to_aabb() -> AABB:
	return AABB(v_min.to_vector3(), v_max.to_vector3())

