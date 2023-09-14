extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().quit()


func _on_clear_pressed():
	$Label.text=""
	$Label2.text=""
	$Label3.text=""
	$Label4.text=""
	$Label5.text=""


func _on_calculate_pressed():
	var Num1=int($Num1.text)
	var Num2=int($Num2.text)
	var Num3=int($Num3.text)
	var Num4 = int($Num4.text)
	var Sum = Num1+Num2+Num3+Num4
	var average = Sum / 4
	$Label5.text="Sum="+str(Sum)+"\nAverage="+str(average)
	
