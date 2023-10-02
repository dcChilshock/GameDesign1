extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var sum = 0
	var lcv = 3 #loop control variable 
	while lcv <= 9669:
		sum += lcv
		$ItemList.add_item(str(sum)) 
		lcv += 3 


func _on_clear_pressed():
	$ItemList.clear()


func _on_quit_pressed():
	get_tree().quit()
