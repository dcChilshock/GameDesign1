extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_be_gonebtn_pressed():
	$Bigboytextbox.text=""
	$WidthEdit.text=""
	$LengthEdit.text=""
func _on_skiddadlebtn_pressed():
	get_tree().quit()
func _on_calculatebtn_pressed():
	var Tallneck= int($LengthEdit.text)
	var Bigman= int($WidthEdit.text)
	var area= Tallneck * Bigman
	var perim= 2 * Tallneck + 2 * Bigman
	$Bigboytextbox.text="Area: "+str(area)+"\nPerimeter: "+str(perim)
