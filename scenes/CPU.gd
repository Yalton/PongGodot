extends StaticBody2D


var ball_pos : Vector2
var dist : int 
var move_by : int 
var win_height  : int 
var p_height : int

# Called when the node enters the scene tree for the first time.
func _ready():
	win_height = get_viewport_rect().size.y
	p_height = $ColorRect.get_size().y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move paddle towards the ball
