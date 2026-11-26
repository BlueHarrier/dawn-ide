## Wrapped double.
extends AbstractData
class_name DataDouble

const SCHEMA = {
	"value": ["value", true, TYPE_FLOAT, null],
}

var value: float

func _to_variant() -> Variant:
	return value
