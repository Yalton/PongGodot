extends CharacterBody2D


var win_size: Vector2
const START_SPEED : int = 500
const ACCEL : int = 5
var speed : int 
var dir : Vector2


func _ready():
	win_size = get_viewport_rect().size

func new_ball(): 
	
	#randomize start position 
	position.x = -5
	position.y = randi_range(-100, 100)
	print("new ball spawning at: ", position.x, " : ",position.y)
	speed = START_SPEED
	dir = random_direction()

func _physics_process(delta):
	move_and_collide(dir * speed * delta)

func random_direction():
	var new_dir := Vector2()
	new_dir.x = [1, -1].pick_random()
	new_dir.y = randf_range(-1, 1)
	return new_dir.normalized()
