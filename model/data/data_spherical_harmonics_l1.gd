## Wrapped [SphericalHarmonicsL1].
extends AbstractData
class_name DataSphericalHarmonicsL1

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/compounds/spherical_harmonics_l1.gd")],
}

var value: SphericalHarmonicsL1:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SphericalHarmonicsL1.new()
		return value

func _to_variant() -> Variant:
	return value
