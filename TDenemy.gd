extends CharacterBody2D


const SPEED = 300.0
var MAX_HEALTH: float = 30.0
var  HEALTH = MAX_HEALTH
var DAMAGE = 10.0
var AI_STATE = STATES.IDLE
enum STATES { IDLE=0, DAMAGED, NORTH, SOUTH, WEST, EAST, NORTH_W, NORTH_E, SOUTH_W, SOUTH_E}

var state_directionS = [
	Vector2.ZERO,
	Vector2.UP, #NORTH
	Vector2.DOWN, #SOUTH
	Vector2.LEFT, #WEST
	Vector2.RIGHT, #EAST
	Vector2(-1,-1).normalized(), #NW
	Vector2(1,-1).normalized(), #NE
	Vector2(-1,1).normalized(),#SW
	Vector2(1,1).normalized(), #SE
	Vector2.ZERO
]
