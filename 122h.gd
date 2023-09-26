extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	$ItemList.add_item("Number")
	for num in range(2, 20+1):
		var line = "%d ---- %d ---- %f ---- %d ---- %f" % [num, num * num, sqrt(num), num*(num*num), num**1/4  ]
		$ItemList.add_item(line)


func _on_clear_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	pass # Replace with function body.
