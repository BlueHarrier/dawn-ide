## Wrapped nullable long.
extends AbstractData
class_name DataNullableLong

const SCHEMA = {
	"value": ["value", true, [TYPE_INT, TYPE_NIL], [null, null]],
}

var value: Variant:
	set(p_value):
		value = p_value if p_value is int else null

func _to_variant() -> Variant:
	return value
