## Wrapped nullable TimeSpan.
## Godot does not have a TimeSpan class, but they can be serialized and deserialized
# from [String] using RegEx.
extends AbstractData
class_name DataNullableTimeSpan

const SCHEMA = {
	"value": ["value", true, [TYPE_STRING, TYPE_NIL], null],
}

var value: Variant:
	set(p_value):
		if p_value is String:
			if !_inner_data:
				_inner_data = DataTimeSpan.new()
			_inner_data.value = p_value
		else:
			_inner_data = null
	get:
		if _inner_data:
			return _inner_data.value
		else:
			return null

var _inner_data: DataTimeSpan

func _to_variant() -> Variant:
	return value

## Calculates the Unix time offset of the value. Decimals will be rounded.
## Returns 0 if [value] is [null].
func to_unix_time_offset() -> int:
	if _inner_data:
		return _inner_data.to_unix_time_offset()
	else:
		return 0

## Sets the value from a Unix time offset.
func set_unix_time_offset(offset: int) -> void:
	if !_inner_data:
		_inner_data = DataTimeSpan.new()
	_inner_data.set_unix_time_offset(offset)

## Adds a Unix time offset to the current value. Does nothing if [value] is [null].
func add_unix_time_offset(offset: int) -> void:
	if _inner_data:
		_inner_data.add_unix_time_offset(offset)
