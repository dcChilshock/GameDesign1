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
	$Copies.text=""
	$Label2.text=""


func _on_calcuclate_pressed():
	var Copies = int($Copies.text)
	var price = 0.0 #price per copy
	var cost = 0.0 #total cost
	if Copies> 0 and Copies <= 99:
		price = 0.30
	elif Copies > 99 and Copies <= 499: 
		price= 0.28
	elif Copies > 499 and Copies <= 749:
		price=0.26 
	elif Copies > 749 and Copies <= 1000:
		price = 0.26
	elif Copies > 1000:
		price = 0.25
	else: 
		$Label2.text="Invalid number of copies."
		return
	cost = price * Copies
	$Label2.text="Price per copy is:"+str(price)+"\nTotal Cost is $%.2f" % cost
	#0-99 = 0.30 per copy
	#100-499 = 0.28
	#500-749 = 0.27
	#750-1000= 0.26
	#1000 and over = 0.25
