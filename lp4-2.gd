extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().quit()


func _on_clear_pressed():
	$weightedit.text=""
	$widthedit.text=""
	$heightedit.text=""
	$lengthedit.text=""
	$Label3.text=""


func _on_calculate_pressed():
	var weight = int($weightedit.text)
	var height = int($heightedit.text)
	var length = int($lengthedit.text)
	var width = int($widthedit.text)
	var size = height * length * width
	if size <= 100000 and weight <= 27:
		$Label3.text="Your package is within parameters"
	elif size > 100000 and weight > 27:
		$Label3.text="too heavy and too big"
	elif size <= 100000 and weight > 27:
		$Label3.text="Too heavy" 
	elif size > 100000 and weight <=27:
		$Label3.text="Too big"
	return
