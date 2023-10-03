extends Control
var score = 0
func addpoint():
	score+=1
func subpoint():
	score-=1
func reset():
	score=0
func update():
	$mainlabel.text = "Score: %d" % score

func _on_update_pressed():
	var choice= $LineEdit.text.to_lower()
	if choice=="add":
		addpoint()
	elif choice=="sub" or choice=="subtract":
		subpoint()
	else:
		OS.alert("invalid choice!")
	update()
func _on_reset_pressed():
	reset()
	update() 


func _on_exit_pressed():
	get_tree().quit()
