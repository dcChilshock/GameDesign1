extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$egg.text=""
	$Label2.text=""
	$Label.text=""


func _on_exit_pressed():
	get_tree().quit()
func _on_calculate_pressed():
	var egg = int($egg.text)
	var dozens = floor(egg / 12)
	var leftover = egg%12
	var price = 0 
	if dozens>=0 and dozens < 4:
		$Label2.text="Amount of dozens"+str(dozens)+"\nPrice per dozens are 0.50 cents"
		price = 0.50
	elif dozens>=4 and dozens < 6:
		$Label2.text="Amount of dozens"+str(dozens)+"\nPrice per dozens are 0.45 cents"
		price = 0.45
	elif dozens>=6 and dozens < 11:
		$Label2.text="Amount of dozens"+str(dozens)+"\nPrice per dozens are 0.40 cents"
		price = 0.40
	elif dozens >= 11:
		$Label2.text="Amount of dozens"+str(dozens)+"\nPrice per dozens are 0.35 cents"
		price = 0.35
	var priceextra = price / 12
	var totalextra = priceextra * leftover
	var total = dozens * price
	var realtotal = total + totalextra
	$Label.text="Total is: "+str(realtotal)
	return 
