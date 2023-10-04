extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
var num1 = int($LineEdit.text)
var num2 = int($LineEdit2.text)
var div = 0
var remain = 0
func add2num(num1, num2): 
	num1 += num2 
func sub2num(num1, num2):
	num1 -= num2
func mul2num(num1,num2):
	num1 *= num2
func div2num(num1,num2):
	num1 /= num2
func pow2num(num1,num2):
	pow(num1, num2)
func mod2num(num1,num2):
	num1 /= num2 == div
	floor(div)
	num2 *= div == num2
	num1 -= num2 == remain
