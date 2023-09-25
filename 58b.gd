extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$B.text=""
	$C.text=""
	$A.text=""
	$Label4.text=""


func _on_exit_pressed():
	get_tree().quit()


func _on_calculate_pressed():
	var A=int($Line.text)
	var B=int($B2.text)
	var C=int($Cc.text)
	var x=0
	var proot = (- B + sqrt(B**2 - 4 * A * C))/2 * A
	var nroot = (- B - sqrt(B**2 - 4 * A * C))/2 * A
	$Label4.text = "roots are %d and %d" % [proot , nroot]
