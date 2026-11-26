## Wrapped DateTime.
## Godot does not have a DateTime class, but the singleton [Time] contains useful tools
## to work with ISO 8601 dates.
extends AbstractData
class_name DataDateTime

const SCHEMA = {
	"value": ["value", true, TYPE_STRING, null],
}

var value: String:
	set(p_value):
		var t := Time.get_unix_time_from_datetime_string(p_value)
		if t >= 0:
			value = p_value
		else:
			value = Time.get_date_string_from_system()

func _to_variant() -> Variant:
	return value

## Converts the ISO 8601 value into Unix time.
func to_unix_time() -> int:
	return Time.get_unix_time_from_datetime_string(value)

## Converts the ISO 8601 value into a [Dictionary]. See [Time] for more information.
func to_datetime_dict(weekday: bool = false) -> Dictionary:
	return Time.get_datetime_dict_from_datetime_string(value, weekday)

## Sets the value from a Unix time.
func set_unix_time(time: int) -> void:
	value = Time.get_datetime_string_from_unix_time(time)

## Sets the value from a [Dictionary]. See [Time] for more information.
func set_datetime_dict(dict: Dictionary) -> void:
	value = Time.get_datetime_string_from_datetime_dict(dict, false)

## Sets the system time.
func set_system_time(utc: bool = false) -> void:
	value = Time.get_datetime_string_from_system(utc)

## Adds a Unix time offset to the current value.
func add_unix_time_offset(offset: int) -> void:
	var time := to_unix_time()
	set_unix_time(time + offset)
