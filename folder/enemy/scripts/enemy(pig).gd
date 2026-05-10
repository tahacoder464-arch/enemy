extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d_main = $CollisionShape2D
@onready var timer = $Timer

var hp = 100
 
func _ready():
	var animations = ["idle", "slepping", "idle-normal"]
	animated_sprite_2d.play(animations.pick_random())


func _physics_process(delta):
	if hp <= 0:
		queue_free()
		return # On sort de la fonction immédiatement
		
	
	if hp < 70 and hp > 50:
		animated_sprite_2d.play("damaged")
	elif hp < 50 and hp > 0:
		animated_sprite_2d.play("near death")

func _on_body_entered(body):
	hp -= 20
	


	
