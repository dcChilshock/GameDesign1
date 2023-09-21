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
	var a = int($LineEdit.text)
	var aa= int($aa.text)
	var b= int($B2.text)
	var bb= int($Bb.text)
	var c= int($Cc.text)
	var cc= int($ccc.text)
	var x = 1
	var Quadequation = a * (x * x) + (b * x) + cc
	
