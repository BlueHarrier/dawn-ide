## Wrapped [SphericalHarmonicsL4].
extends AbstractData
class_name DataSphericalHarmonicsL4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/compounds/spherical_harmonics_l4.gd")],
}

var value: SphericalHarmonicsL4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SphericalHarmonicsL4.new()
		return value

func _to_variant() -> Variant:
	return value
