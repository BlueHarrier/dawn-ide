## Represents a first order spherical harmonic.
extends RefCounted
class_name SphericalHarmonicsL1

const _DATA = preload("res://model/data/data.gd")

const SCHEME = {
	"sh0": ["sh0", true, TYPE_OBJECT, _DATA],
	"sh1": ["sh1", true, TYPE_OBJECT, _DATA],
	"sh2": ["sh2", true, TYPE_OBJECT, _DATA],
	"sh3": ["sh3", true, TYPE_OBJECT, _DATA],
}

var sh0: AbstractData
var sh1: AbstractData
var sh2: AbstractData
var sh3: AbstractData
