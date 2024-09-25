extends Node
#
#@onready var player = $DetectiveTrip
##var first_time_enter = true  # Flag to track first entry
#var pressd= false
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#if Input.is_action_just_pressed("ui_accept"):
		#DialogueManager.show_example_dialogue_balloon(load("res://dialogue/intro.dialogue"))
		#return
		#
		#
		
	
	#if first_time_enter:
		#player.position = Vector2(6, 2)  # Assign both x and y at once
		#first_time_enter = false  # Mark that first entry is complete

## Called when the node enters the scene tree.
#func _enter_tree() -> void:
	#if not first_time_enter:
		#var movement = Vector2(321, 11)  # Difference between original and target
		#player.translate(movement)  # Move the player by this offset
#
