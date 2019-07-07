extends Node2D

signal hit
signal final_screen

var numHits = 0;
var textList = ["Every year 1 in 2000 babies born is different enough to be recommended medically unnecessary 'corrective surgery'.",
				"While progress has been made, surgery is still legal in the UK and babies continue to receive cosmetic 'normalising' operations.",
				"Many intersex folks don't find out about this surgery until well into adulthood."]
var positions = [1286.354, 1025.001, 1554.395, 1946.63]

var collisionShape

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	collisionShape = get_node("Area2D/CollisionShape2D")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	collisionShape.disabled = true
	if (numHits == 3):
		emit_signal("final_screen")
	else:
		emit_signal("hit", textList[numHits])
		if (numHits < 3):
			numHits += 1
		position.x = positions[numHits]
	collisionShape.disabled = false
	
	
	
	
