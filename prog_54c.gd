extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_poofbtn_pressed():
	$Thicktextman.text=""


func _on_skiddadlebtn_pressed():
	get_tree().quit()


func _on_calculate_pressed():
	var Radius = float($Radiusedit.text)
#Float is used for decimals n stuff
	var area = PI * pow(Radius, 2) #radius power 2
	var circ = 2 * PI * Radius 
	$Thicktextman.text="The Area is bumdabum: "+str(area)+"\nCircumfrence of the circle: "+str(circ)
