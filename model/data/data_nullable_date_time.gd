## Wrapped nullable DateTime.
## Godot does not have a DateTime class, but the singleton [Time] contains useful tools
## to work with ISO 8601 dates.
extends AbstractData
class_name DataNullableDateTime

const SCHEMA = {
	"value": ["value", true, [TYPE_STRING, TYPE_NIL], [null, null]],
}

var value: Variant:
	set(p_value):
		if p_value is String:
			if !_inner_data:
				_inner_data = DataDateTime.new()
			_inner_data.value = p_value
		else:
			_inner_data = null
	get:
		if _inner_data:
			return _inner_data.value
		else:
			return null

var _inner_data: DataDateTime

func _to_variant() -> Variant:
	return value

## Converts the ISO 8601 value into Unix time. Returns -1 if [value] is [null].
func to_unix_time() -> int:
	if _inner_data:
		return _inner_data.to_unix_time()
	else:
		return -1

## Converts the ISO 8601 value into a [Dictionary]. See [Time] for more information.
## Returns an empty [Dictionary] if [value] is [null].
func to_datetime_dict(weekday: bool = false) -> Dictionary:
	if _inner_data:
		return _inner_data.to_datetime_dict(weekday)
	else:
		return {}

## Sets the value from a Unix time.
func set_unix_time(time: int) -> void:
	if !_inner_data:
		_inner_data = DataDateTime.new()
	_inner_data.set_unix_time(time)

## Sets the value from a [Dictionary]. See [Time] for more information.
func set_datetime_dict(dict: Dictionary) -> void:
	if !_inner_data:
		_inner_data = DataDateTime.new()
	_inner_data.set_datetime_dict(dict)

## Sets the system time.
func set_system_time(utc: bool = false) -> void:
	if !_inner_data:
		_inner_data = DataDateTime.new()
	_inner_data.set_system_time(utc)

## Adds a Unix time offset to the current value. Does nothing if [value] is [null].
func add_unix_time_offset(offset: int) -> void:
	if _inner_data:
		_inner_data.add_unix_time_offset(offset)
