extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$world/CollisionPolygon2D/Polygon2D.polygon = $world/CollisionPolygon2D.polygon
	$world2/CollisionPolygon2/Polygon2.polygon = $world2/CollisionPolygon2.polygon
	$world3/CollisionPolygon2D/Polygon2D.polygon = $world3/CollisionPolygon2D.polygon

func _process(delta):
	if draggingdeez:
		$dragable.global_position = get_global_mouse_position() - offset

var draggingdeez = false 
var offset = Vector2.ZERO

func _on_button_button_down():
	draggingdeez=true
	offset = get_global_mouse_position() - $dragable.global_position
	$dragable.freeze = true 

func _on_button_button_up():
	draggingdeez=false 
	$dragable.freeze =false





