extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$main.text=""
	$Vehiclename.text=""
	$miles.text=""
	$gallons.text=""


func _on_exit_pressed():
	get_tree().quit()


func _on_calculate_pressed():
	var name = str($Vehiclename.text)
	var miles = int($miles.text)
	var gallons = int($gallons.text)
	var mpg = miles / gallons
	$main.text="name of the car is: " + str(name) +"\nMiles="+str(miles)+"\nGallons="+str(gallons)+"\nMiles per gallon="+str(mpg)
	
