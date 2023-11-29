extends CharacterBody2D


const SPEED = 300.0
var MAX_HEALTH: float = 30.0
var  HEALTH = MAX_HEALTH
var DAMAGE = 10.0
var AI_STATE = STATES.IDLE
				# 0  1 up   2down 3left 4right 5         6        7        8         9
enum STATES { IDLE=0, NORTH, SOUTH, WEST, EAST, NORTH_W, NORTH_E, SOUTH_W, SOUTH_E, DAMAGED}

signal recovered
var inertia = Vector2()
var ai_timer_max = 0.5
var ai_timer = ai_timer_max - randi() % 5
var damage_lock = 0.0 
var animation_lock = 0.0 
var knockback = 120.0
var vision_distance = 40.0
var money_value = 5.0

@onready var raycastN =$RayCastN
@onready var raycastM =$RayCastW
@onready var raycastS =$RayCastS

func turn_toward_player_location(location: Vector2):
	
	var dir_to_player = (location - global_position).normalized()
	velocity = dir_to_player * (SPEED)
	var closest_angle = INF 
	var closest_state = STATES.IDLE
	for i in range(1, 5):
		var state_dir = state_directions[i]
		var angle_diff = abs(state_dir.angle_to(dir_to_player))
		if angle_diff < closest_angle:
			closest_angle = angle_diff
			closest_state = STATES.values()[i]
	AI_STATE = closest_state

func _physics_process(delta):
	animation_lock = max(animation_lock-delta, 0.0)
	damage_lock = max(damage_lock-delta, 0.0)
	if int(AI_STATE) >= 1 and int(AI_STATE) <= 8:
		var raydir = state_directions[int(AI_STATE)]
		raycastM.target_position = raydir * vision_distance
		raycastN.target_position = \
			raydir.rotated(deg_to_rad(-45)).normalized() * vision_distance
		raycastS.target_position = \
			raydir.rotated(deg_to_rad(-45)).normalized() * vision_distance
	
	if animation_lock ==0.0:
		if AI_STATE == STATES.DAMAGED:
			AI_STATE = STATES.IDLE
			recovered.emit()
		
		for player in get_tree().get_nodes_in_group("player"):
			if $attack_hitbox.overlaps_body(player):\
				if player.damage_lock == 0.0:
					player.inertia = (player.global_position - global_position).normalized()*knockback
					player.take_damage(DAMAGE)
			else: 
				return
	if player.data.state != player.STATES.DEAD:
		if (raycastM.is_colliding() and raycastM.get_collider() == player) or \
			(raycastN.is_colliding() and raycastN.get_collider() == player) or \
			(raycastS.is_colliding() and raycastS.get_collider() == player):
				turn_toward_player_location(player.global_position)
			
