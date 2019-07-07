extends KinematicBody2D

export var speed = 250
export var gravity = 100

var screen_size
func _ready():
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	if (Input.is_action_pressed("ui_right")):
		velocity.x += 1
	if (velocity.length() > 0):
		velocity = velocity.normalized() * speed
#		add walking animation
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	
func _physics_process(delta):
	var velocity = Vector2()
	if (Input.is_action_pressed("ui_right")):
		velocity.x += 1
	
	if (!is_on_floor()):
		velocity.y += gravity * delta
	move_and_collide(velocity)