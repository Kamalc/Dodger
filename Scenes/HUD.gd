extends CanvasLayer

signal start_game
func show_message(text):
    $MessegeLabel.text = text
    $MessegeLabel.show()
    $MessegeTimer.start()

func show_game_over():
    show_message("Game Over")
    yield($MessegeTimer, "timeout")
    $StartButton.show()
    $MessegeLabel.text = "Hello!"
    $MessegeLabel.show()
func update_score(score):
    $ScoreLabel.text = str(score)


func _on_StartButton_pressed():
    $StartButton.hide()
    emit_signal("start_game")

func _on_MessegeTimer_timeout():
    $MessegeLabel.hide()
