extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculatebtn_pressed():
	var kilowatts = int($Kilowatts.text)
	var Baserate = kilowatts * 0.0475
	var Surcharge = Baserate * 0.10
	var CityTax = Baserate * 0.03
	var TotalAmount = Baserate + Surcharge + CityTax
	var Latepayment = TotalAmount * 0.04
	var Latetotalpay = TotalAmount + Latepayment
	$Bigmanoutput.text = "Base Rate: $" + str(Baserate) + "\nSurcharge: $" + str(Surcharge) + "\nCity Tax: $" + str(CityTax) + "\n\nPay this amount: $"+str(TotalAmount)+"\nIf Late Pay this: $"+str(Latetotalpay)


func _on_clearbtn_pressed():
	pass # Replace with function body.


func _on_exitbtn_pressed():
	get_tree().quit()
