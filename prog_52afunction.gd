extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func getArea(length, width):
	var area = length * width 
	return area
func getPerim(length, width):
	var perim = (2*length)+(2*width)
	return (2*length)+(2*width)
func sayhi():
	print("HELLLLLLOOOOOOOO")

func _on_calculate_pressed():
	sayhi()
	var length = int($LineEdit.text)
	var width = int($LineEdit2.text)
	var a = getArea(length, width)
	var p = getPerim(length, width) 
	$Label.text="Area: %d\nPerimeter: %d" % [a,p]
func _on_clear_pressed():
	$Label.text=""
	$LineEdit.text=""
	$LineEdit2.text=""
func _on_exit_pressed():
	get_tree().quit()
