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
	$operationtext.text= operation
func _on_btnmod_pressed():
	var num1 =  int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var mod = mod2num(num1, num2)
	var operation = "mod"
	$Resulttext.text=": %d" % [mod]
	$operationtext.text= operation
func _on_btnsub_pressed():
	var num1 =  int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var sub = sub2num(num1, num2)
	var operation = "subtraction"
	$Resulttext.text=": %d" % [sub]
	$operationtext.text= operation
func _on_btnmul_pressed():
	var num1 = int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var mul = mul2num(num1, num2)
	var operation = "Multipulcation"
	$operationtext.text= operation
	$Resulttext.text= ": %d" % [mul] 
func _on_btndiv_pressed():
	var num1 = int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var div=div2num(num1,num2)
	$Resulttext.text= ": %d" % [div]
	var operation = "division" 
	$operationtext.text= operation
	
func _on_btnpow_pressed():
	var num1 = int($lineeditone.text)
	var num2 = int($lineedittwo.text)
	var pow= pow2num(num1, num2)
	var operation = "power"
	$Resulttext.text= ": %d" % [pow]
	$operationtext.text= operation
func _on_reset_pressed():
	$lineeditone.text=""
	$lineedittwo.text=""
	$operationtext.text=""
	$Resulttext.text =""
func _on_quit_pressed():
	get_tree().quit()
