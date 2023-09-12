extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btn_a_pressed():
	$Label.text="Correct my Favorite Subject is
	English."
func _on_btn_clear_pressed():
	$Label.text=""
	

func _on_btn_b_pressed():
	pass # Replace with function body.
	$Label.text="Wrong try Again."

func _on_btn_c_pressed():
	pass # Replace with function body.
	$Label.text="Wrong try again."
