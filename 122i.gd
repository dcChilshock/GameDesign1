extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	pass # Replace with function body.


func _on_calculate_pressed():
	$ItemList.add_item("Number-----Square-----Square root")
	for num in range(-25, 25+1, 1):
		var line = "%d ----- %f ----- %d" % [num, abs(num)*0.33 , num**3 ]
		$ItemList.add_item(line)
