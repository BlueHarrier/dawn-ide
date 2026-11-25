## Represents a 3x3 double matrix.
extends RefCounted
class_name Double3x3

const SCHEMA = {
	"m00": ["m00", true, TYPE_FLOAT, null],
	"m01": ["m01", true, TYPE_FLOAT, null],
	"m02": ["m02", true, TYPE_FLOAT, null],
	"m10": ["m10", true, TYPE_FLOAT, null],
	"m11": ["m11", true, TYPE_FLOAT, null],
	"m12": ["m12", true, TYPE_FLOAT, null],
	"m20": ["m20", true, TYPE_FLOAT, null],
	"m21": ["m20", true, TYPE_FLOAT, null],
	"m22": ["m22", true, TYPE_FLOAT, null],
}

var m00: float
var m01: float
var m02: float
var m10: float
var m11: float
var m12: float
var m20: float
var m21: float
var m22: float

func _init(
	p_m00: float = .0, p_m01: float = .0, p_m02: float = .0,
	p_m10: float = .0, p_m11: float = .0, p_m12: float = .0,
	p_m20: float = .0, p_m21: float = .0, p_m22: float = .0,
	) -> void:
	m00 = p_m00
	m01 = p_m01
	m02 = p_m02
	m10 = p_m10
	m11 = p_m11
	m12 = p_m12
	m20 = p_m20
	m21 = p_m21
	m22 = p_m22

## Creates a [Transform3D] from the internal values with no origin.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_transform3d() -> Transform3D:
	return Transform3D(
		Vector3(m00, m10, m20),
		Vector3(m01, m11, m21),
		Vector3(m02, m12, m22),
		Vector3.ZERO,
	)

## Creates a [Transform2D] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_transform2d() -> Transform2D:
	return Transform2D(to_transform3d())
