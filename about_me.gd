extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _on_button_pressed():
	$Label.text="I like to Read, play video games 
	and draw sometimes."
func _on_btn_clear_pressed():
	$Label.text=""
