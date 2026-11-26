## Represents a third order spherical harmonic.
extends RefCounted
class_name SphericalHarmonicsL3

const _DATA = preload("res://model/data/data.gd")

const SCHEME = {
	"sh0": ["sh0", true, TYPE_OBJECT, _DATA],
	"sh1": ["sh1", true, TYPE_OBJECT, _DATA],
	"sh2": ["sh2", true, TYPE_OBJECT, _DATA],
	"sh3": ["sh3", true, TYPE_OBJECT, _DATA],
	"sh4": ["sh4", true, TYPE_OBJECT, _DATA],
	"sh5": ["sh5", true, TYPE_OBJECT, _DATA],
	"sh6": ["sh6", true, TYPE_OBJECT, _DATA],
	"sh7": ["sh7", true, TYPE_OBJECT, _DATA],
	"sh8": ["sh8", true, TYPE_OBJECT, _DATA],
	"sh9": ["sh9", true, TYPE_OBJECT, _DATA],
	"sh10": ["sh10", true, TYPE_OBJECT, _DATA],
	"sh11": ["sh11", true, TYPE_OBJECT, _DATA],
	"sh12": ["sh12", true, TYPE_OBJECT, _DATA],
	"sh13": ["sh13", true, TYPE_OBJECT, _DATA],
	"sh14": ["sh14", true, TYPE_OBJECT, _DATA],
	"sh15": ["sh15", true, TYPE_OBJECT, _DATA],
}

var sh0: AbstractData
var sh1: AbstractData
var sh2: AbstractData
var sh3: AbstractData
var sh4: AbstractData
var sh5: AbstractData
var sh6: AbstractData
var sh7: AbstractData
var sh8: AbstractData
var sh9: AbstractData
var sh10: AbstractData
var sh11: AbstractData
var sh12: AbstractData
var sh13: AbstractData
var sh14: AbstractData
var sh15: AbstractData
