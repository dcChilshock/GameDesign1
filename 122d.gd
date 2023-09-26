extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$ItemList.clear()


func _on_exit_pressed():
	get_tree().exit()


func _on_calculate_pressed():
	$ItemList.add_item("x----y")
	for num in range(-12 , 16+1, 1):
		var line = "%d ----- %d"%[num,pow(num,6)-(3*pow(num,5))-(93*pow(num,4))+(87*pow(num,3))+(1596*pow(num,2))-(1380*num)-2800]
		$ItemList.add_item(line)
		
		
		
		

