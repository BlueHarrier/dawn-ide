## Wrapped [ColorX].
extends AbstractData
class_name DataColorX

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/color_x.gd")],
}

var value: RLColorX:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = RLColorX.new()
		return value

func _to_variant() -> Variant:
	return value
