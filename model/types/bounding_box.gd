## Represents a 3D float bounding box.
extends RefCounted
class_name BoundingBox

const _Float3 := preload("./float3.gd")

const SCHEMA = {
	"v_min": ["min", true, TYPE_OBJECT, _Float3],
	"v_max": ["max", true, TYPE_OBJECT, _Float3],
}

var v_min: Float3
var v_max: Float3

func _init(p_min: Float3 = Float3.new(), p_max: Float3 = Float3.new()) -> void:
	v_min = p_min
	v_max = p_max

## Creates a [AABB] from the internal values.
func to_aabb() -> AABB:
	return AABB(v_min.to_vector3(), v_max.to_vector3())

