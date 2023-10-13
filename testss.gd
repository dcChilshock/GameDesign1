extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var x = 10
	var y = 50 
	if x ** 2 > 100 and y < 100:
		$Label.text ="%d and %d" % [x, y]
