## Wrapped [SphericalHarmonicsL3].
extends AbstractData
class_name DataSphericalHarmonicsL3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/compounds/spherical_harmonics_l3.gd")],
}

var value: SphericalHarmonicsL3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SphericalHarmonicsL3.new()
		return value

func _to_variant() -> Variant:
	return value
