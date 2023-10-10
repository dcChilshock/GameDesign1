extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$world/CollisionPolygon2D/Polygon2D.polygon=$world/CollisionPolygon2D.polygon
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if draggingdeez:
		$dragable.global_position = get_global_mouse_position() - offset


func _on_interact_mouse_entered():
	print("hover")
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		$interact.queue_free() #deleted from game world 
	#Doesnt work lmao goofy ah

var draggingdeez = false 
var offset = Vector2.ZERO

func _on_button_button_down():
	draggingdeez=true
	offset = get_global_mouse_position() - $dragable.global_position
	$dragable.freeze = true 

func _on_button_button_up():
	draggingdeez=false 
	$dragable.freeze =false
