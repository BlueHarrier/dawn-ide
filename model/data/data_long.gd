## Wrapped long.
extends AbstractData
class_name DataLong

const SCHEMA = {
	"value": ["value", true, TYPE_INT, null],
}

var value: int

func _to_variant() -> Variant:
	return value
