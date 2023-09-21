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
	$item.clear()


func _on_calculate_pressed():
	$item.add_item("Number")
	#loop through all even numbers from 2 - 36
	# range(start, stop) or
	# rnage(start, stop, step)
	for num in range(2, 36+1, 2):
		var line = "%d" % num
		$item.add_item(line)
		
