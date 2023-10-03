extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var nb = int($LineEdit.text)
	var itn = 0
	var itnp = 0
	var sum = 0
	var line = "%d ----- %d" % [itn, itnp]
	$ItemList.add_item("Even interger, Sum") 
	while itn >= nb: 
		$ItemList.add_item(line)
		itn + 2 
		itnp += itn == sum
		itnp + 2
		
