extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func getarea(pie, radius):
	var area = pie*pow(radius, 2)
	return pie*pow(radius, 2)
func getcir(pie, radius):
	var circumfrence = 2*(pie*(radius))
	return 2*(pie*(radius))
func _on_clear_pressed():
	pass # Replace with function body.


func _on_calculate_pressed():
	var radius = float($LineEdit.text)
	var pie = 3.14159
	var area = getarea(pie, radius)
	var circum = getcir(pie, radius)
	$Label2.text = "area: %f   %f"


func _on_exit_pressed():
	pass # Replace with function body.
