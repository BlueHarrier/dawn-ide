## Represents a 4x4 double matrix.
extends RefCounted
class_name Double4x4

const SCHEMA = {
	"m00": ["m00", true, TYPE_FLOAT, null],
	"m01": ["m01", true, TYPE_FLOAT, null],
	"m02": ["m02", true, TYPE_FLOAT, null],
	"m03": ["m03", true, TYPE_FLOAT, null],
	"m10": ["m10", true, TYPE_FLOAT, null],
	"m11": ["m11", true, TYPE_FLOAT, null],
	"m12": ["m12", true, TYPE_FLOAT, null],
	"m13": ["m13", true, TYPE_FLOAT, null],
	"m20": ["m20", true, TYPE_FLOAT, null],
	"m21": ["m20", true, TYPE_FLOAT, null],
	"m22": ["m22", true, TYPE_FLOAT, null],
	"m23": ["m23", true, TYPE_FLOAT, null],
	"m30": ["m30", true, TYPE_FLOAT, null],
	"m31": ["m30", true, TYPE_FLOAT, null],
	"m32": ["m32", true, TYPE_FLOAT, null],
	"m33": ["m33", true, TYPE_FLOAT, null],
}

var m00: float
var m01: float
var m02: float
var m03: float
var m10: float
var m11: float
var m12: float
var m13: float
var m20: float
var m21: float
var m22: float
var m23: float
var m30: float
var m31: float
var m32: float
var m33: float

func _init(
	p_m00: float = .0, p_m01: float = .0, p_m02: float = .0, p_m03: float = .0,
	p_m10: float = .0, p_m11: float = .0, p_m12: float = .0, p_m13: float = .0,
	p_m20: float = .0, p_m21: float = .0, p_m22: float = .0, p_m23: float = .0,
	p_m30: float = .0, p_m31: float = .0, p_m32: float = .0, p_m33: float = .0,
	) -> void:
	m00 = p_m00
	m01 = p_m01
	m02 = p_m02
	m03 = p_m03
	m10 = p_m10
	m11 = p_m11
	m12 = p_m12
	m13 = p_m13
	m20 = p_m20
	m21 = p_m21
	m22 = p_m22
	m23 = p_m23
	m30 = p_m30
	m31 = p_m31
	m32 = p_m32
	m33 = p_m33

## Creates a [Projection] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_projection() -> Projection:
	return Projection(
		Vector4(m00, m10, m20, m30),
		Vector4(m01, m11, m21, m31),
		Vector4(m02, m12, m22, m32),
		Vector4(m03, m13, m23, m33),
	)

## Creates a [Transform3D] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_transform3d() -> Transform3D:
	return Transform3D(to_projection())

## Creates a [Transform2D] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_transform2d() -> Transform2D:
	return Transform2D(to_transform3d())
