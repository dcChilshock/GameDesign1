extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	$ItemList.add_item("Number-----Square-----Square root")
	for num in range(1, 50+1, 1):
		var line = "%d ----- %d ----- %.4f" % [num, num * num, sqrt(num) ]
		$ItemList.add_item(line)


func _on_clear_pressed():
	$ItemList.clear()


func _on_exit_pressed():
	get_tree().exit()
