extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add2num(num1, num2): 
	var add = num1 + num2
	return num1 + num2

func sub2num(num1, num2):
	var subtract = num1 - num2
	return num1 - num2

func mul2num(num1,num2):
	var multiply = num1 * num2
	return num1 * num2

func div2num(num1,num2):
	var division = num1 / num2
	return num1 / num2

func pow2num(num1,num2): 
	var power = pow(num1, num2)
	return pow(num1, num2)

func mod2num(num1,num2):
	var div = 0
	var remain = 0
	var leftover = 0
	div = num1 / num2
	floor(div)
	leftover = num2 * div 
	remain = num1 - leftover
	return num1 - leftover

func _on_btnadd_pressed():
	var operation = ""
	operation = "Addition"
	var num1 = int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var add = add2num(num1, num2)
	$Resulttext.text= ": %d" % [add] 
	
func _on_btnmod_pressed():
	var num1 = lineeditone
	var num2 = lineedittwo
	var mod = mod2num(num1, num2)
	var operation = 0
	var operation = $operationtext.text="mod"
	$Resulttextbox.text=": %d" % [mod]



func _on_btnsub_pressed():
	var num1 = lineeditone

	var num2 = lineedittwo
	var sub = subfunc(whatever it’s called) (num1, num2)
	var operation = "subtraction"
	$Resulttextbox.text=": %d" % [sub]


