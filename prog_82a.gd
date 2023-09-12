extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clearbtn_pressed():
	$VehicleEdit.text=""
	$SpeedEdit.text=""
	$Output.text=""



func _on_exitbtn_pressed():
	get_tree().quit()



func _on_calculatebtn_pressed():
	var VroomLimit= int($SpeedEdit.text)
	var LightingMcQueen= int($VehicleEdit.text)
	var OverSpeedlimit= LightingMcQueen - VroomLimit
	var Fine = 20 + (OverSpeedlimit * 5)
	$Output.text= "Your Fine is: %.2f" % Fine + "\nYou were going "+str(OverSpeedlimit) + " Miles over the speed limit"
	
	
