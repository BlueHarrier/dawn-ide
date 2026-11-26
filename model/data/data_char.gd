## Wrapped char.
extends AbstractData
class_name DataChar

const SCHEMA = {
	"value": ["value", true, TYPE_STRING, null],
}

var value: String:
	set(p_value):
		value = p_value.substr(0, 1) if !p_value.is_empty() else "a"

func _to_variant() -> Variant:
	return value
