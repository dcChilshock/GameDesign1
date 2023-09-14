extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$LineEdit.text=""
	$LineEdit2.text=""
	$LineEdit3.text=""
	$Label4.text=""


func _on_exit_pressed():
	get_tree().quit()


func _on_calculate_pressed():
	var A = int($LineEdit.text)
	var b= int($LineEdit2.text)
	var b-= int($LineEdit2.text)
	var c= int($LineEdit3.text)
	var Root= 
