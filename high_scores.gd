extends Control

var highscores = [1,7,69]

func update_scoreboard():#WAY TO SORT NUMBER1 
	$ItemList.clear()#FOR-EACH LOOP
	highscores.sort()#FOR SCORE IN HIGHSCORES
	#for score in highscores:
		#$ItemList.add_item(str(score))
	for index in range(len(highscores)):#WAY 2 
		$ItemList.add_item("%d. %d" % [index + 1, highscores[index]])


func _ready():
	update_scoreboard() 

func _process(delta):
	pass

func _on_button_pressed():
	var score = int($LineEdit.text)
	highscores.append(score)
	update_scoreboard()


func _on_sub_score_pressed():
	var position = int($LineEdit2.text) - 1
	highscores.remove_at(position)
	update_scoreboard()
	
