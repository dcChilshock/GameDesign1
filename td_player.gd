extends CharacterBody2D
const SPEED = 100
#const JUMP_VELOCITY = -400.0
var inertia = Vector2()
var look_direction = Vector2.DOWN #(0,1)
var menu_scene = preload("res://my_gui.tscn")
var menu_instance = null

func _ready():
	menu_instance = menu_scene.instantiate()
	add_child(menu_instance) 
	menu_instance.hide()

func _physics_process(delta):
	var direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	).normalized()
	update_animation(direction)
	if direction.length() > 0:
		look_direction = direction 
		#scale to 1 to prevent speed boost from diagonals 
		direction = direction.normalized() 
		velocity = direction * SPEED
	else: 
		velocity = velocity.move_toward(Vector2(), SPEED)
	velocity += inertia 
	move_and_slide()
	inertia  =  inertia.move_toward(Vector2(), delta * 1000.0)
	if Input.is_action_just_pressed("ui_cancel"):
		menu_instance.show()
		get_tree().paused = true
func update_animation(direction): 
	var a_name = "idle_s" #default
	if direction.length() > 0:
		look_direction = direction
		a_name = "walk"
		if direction.x < 0:
			a_name = "side"
			$AnimatedSprite2D.flip_h = look_direction.x > 0
			
		elif direction.y < 0:
			a_name += "_n"
			$AnimatedSprite2D.play()
		elif direction.y > 0:
			a_name += "_s"
			$AnimatedSprite2D.play()
	else:
		if look_direction.x != 0:
			a_name = "idle_w"
			$AnimatedSprite2D.flip_h = look_direction.x > 0
		elif look_direction.y < 0:
			a_name = "idle_n"
		elif look_direction.y > 0:
			a_name = "idle_s"

	if $AnimatedSprite2D.animation != a_name: 
		$AnimatedSprite2D.animation = a_name
	
