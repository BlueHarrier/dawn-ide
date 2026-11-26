## Wrapped [SphericalHarmonicsL2].
extends AbstractData
class_name DataSphericalHarmonicsL2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/compounds/spherical_harmonics_l2.gd")],
}

var value: SphericalHarmonicsL2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SphericalHarmonicsL2.new()
		return value

func _to_variant() -> Variant:
	return value
