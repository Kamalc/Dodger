extends RigidBody2D

export (int) var min_speed 
export (int) var max_speed 
var mob_types = ["swim", "walk","Kimo"]
func _ready():
    $AnimatedSprite.animation = mob_types[randi()%mob_types.size()]
    $AnimatedSprite.play()

func _on_Visibility_screen_exited():
    queue_free()