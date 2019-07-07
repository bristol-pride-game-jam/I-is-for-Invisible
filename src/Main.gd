extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var target = get_node("CanvasLayer/GUI")
	var finalScreen = get_node("CanvasLayer/FinalScreen")
	get_node("TextNode").connect("hit", target, "displayText")
	get_node("TextNode").connect("final_screen", finalScreen, "_display")
	