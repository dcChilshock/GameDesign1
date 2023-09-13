extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$Bigmanlabel.text=""
	$Edit1.text=""
	$Edit2.text=""

func _on_exit_pressed():
	get_tree().quit()


func _on_calculate_pressed():
	var Num1= int($Edit1.text)
	var Num2= int($Edit2.text)
	var Sum=Num1+Num2
	var Diffrence=Num1-Num2
	var Product= Num1 * Num2 
	var Average= Num1 + Num2 / 2 
	var Absolutevalue=abs(Diffrence)
	var Maximum= 0
	var Minimum= 0
	if Num1 > Num2:
		Maximum == Num1
	else: 
		Maximum = Num2
	if Maximum == Num1: 
		Minimum = Num2
	else:
		Minimum = Num1
	$Bigmanlabel.text="Original Numbers Are: "+str(Num1) + " and " + str(Num2) + ".\nSum is: "+str(Sum)+".\nThe Diffrence is: "+str(Diffrence)+".\nThe Product is: "+str(Product)+".\nThe Average is: "+str(Average)+".\nThe Absolute value is: "+str(Absolutevalue)+".\nThe Maximum is: "+str(Maximum)+".\nThe Minimum is: "+str(Minimum)
