extends KinematicBody2D

export var speed = 250
export var gravity = 1300

var screen_size
func _ready():
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	var velocity = Vector2()
	if (Input.is_action_pressed("ui_right")):
		velocity.x += 1
	
	if (!is_on_floor()):
		velocity.y += gravity * delta
	move_and_collide(Vector2(0,1))