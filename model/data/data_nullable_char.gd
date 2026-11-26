## Wrapped nullable char.
extends AbstractData
class_name DataNullableChar

const SCHEMA = {
	"value": ["value", true, [TYPE_STRING, TYPE_NIL], [null, null]],
}

var value: Variant:
	set(p_value):
		if p_value is String:
			value = p_value.substr(0, 1) if !p_value.is_empty() else "a"
		else:
			value = null

func _to_variant() -> Variant:
	return value
